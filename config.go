package main

import (
	"context"
	"log"
	"os"
	"time"

	"go.opentelemetry.io/otel"
	"go.opentelemetry.io/otel/attribute"
	"go.opentelemetry.io/otel/exporters/otlp/otlptrace"
	otgrpc "go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc"
	"go.opentelemetry.io/otel/propagation"
	"go.opentelemetry.io/otel/sdk/resource"
	sdk "go.opentelemetry.io/otel/sdk/trace"
	semconv "go.opentelemetry.io/otel/semconv/v1.4.0"
)

const serviceVersion = "v1.0.0"

func ConfigureOpentelemetry(ctx context.Context) func() {
	exp, err := newGRPCExporter(ctx)
	if err != nil {
		log.Fatalf("failed to initialize exporter: %v", err)
	}

	tp := newTraceProvider(exp)
	otel.SetTracerProvider(tp)

	// Register the trace context and baggage propagators
	// so data is propagated across services/processes.
	otel.SetTextMapPropagator(
		// W3C Trace Context propagator
		propagation.NewCompositeTextMapPropagator(
			propagation.TraceContext{},
			propagation.Baggage{},
		),
	)

	return func() {
		// Handle this error in a sensible manner where possible.
		_ = tp.Shutdown(ctx)
	}

}

func newGRPCExporter(ctx context.Context) (*otlptrace.Exporter, error) {
	opts := []otgrpc.Option{
		otgrpc.WithEndpoint(os.Getenv("OTEL_EXPORTER_OTLP_TRACES_ENDPOINT")),
		otgrpc.WithInsecure(),
		otgrpc.WithTimeout(5 * time.Second),
	}

	client := otgrpc.NewClient(opts...)
	return otlptrace.New(ctx, client)
}

// Create a new tracer provider with a batch span processor and the otlp exporter.
func newTraceProvider(exp *otlptrace.Exporter) *sdk.TracerProvider {
	// service.name attribute is required.
	r, _ := resource.Merge(
		resource.Default(),
		resource.NewWithAttributes(
			semconv.SchemaURL,
			semconv.ServiceNameKey.String(os.Getenv("SERVICE_NAME")),
			semconv.ServiceVersionKey.String(serviceVersion),
			semconv.TelemetrySDKVersionKey.String("v1.12.0"),
			semconv.TelemetrySDKLanguageGo,
			attribute.String("environment", "demo"),
		),
	)

	return sdk.NewTracerProvider(
		sdk.WithSampler(sdk.AlwaysSample()),
		sdk.WithResource(r),
		sdk.WithSpanProcessor(sdk.NewBatchSpanProcessor(exp)))
}

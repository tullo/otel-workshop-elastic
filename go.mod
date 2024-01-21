module github.com/tullo/otel-workshop-elastic

go 1.21

// replace github.com/tullo/otel-workshop => /home/anda/code/otel/workshop

require (
	github.com/tullo/otel-workshop/web/fib v1.0.4
	go.opentelemetry.io/otel v1.22.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.22.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.22.0
	go.opentelemetry.io/otel/sdk v1.22.0
)

require (
	github.com/cenkalti/backoff/v4 v4.2.1 // indirect
	github.com/felixge/httpsnoop v1.0.4 // indirect
	github.com/go-logr/logr v1.4.1 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.18.1 // indirect
	github.com/hashicorp/go-cleanhttp v0.5.2 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/httptrace/otelhttptrace v0.46.1 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.46.1 // indirect
	go.opentelemetry.io/otel/metric v1.22.0 // indirect
	go.opentelemetry.io/otel/trace v1.22.0 // indirect
	go.opentelemetry.io/proto/otlp v1.0.0 // indirect
	golang.org/x/net v0.18.0 // indirect
	golang.org/x/sys v0.16.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20231120223509-83a465c0220f // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20231120223509-83a465c0220f // indirect
	google.golang.org/grpc v1.60.1 // indirect
	google.golang.org/protobuf v1.32.0 // indirect
)

module github.com/tullo/otel-workshop-elastic

go 1.19

// replace github.com/tullo/otel-workshop => /home/anda/code/otel/workshop

require (
	github.com/tullo/otel-workshop v1.0.3
	github.com/tullo/otel-workshop/web/fib v1.0.3
	go.opentelemetry.io/otel v1.17.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.17.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.17.0
	go.opentelemetry.io/otel/sdk v1.17.0
)

require (
	github.com/cenkalti/backoff/v4 v4.2.1 // indirect
	github.com/felixge/httpsnoop v1.0.3 // indirect
	github.com/go-logr/logr v1.2.4 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.16.0 // indirect
	github.com/hashicorp/go-cleanhttp v0.5.2 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/httptrace/otelhttptrace v0.42.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.42.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/internal/retry v1.16.0 // indirect
	go.opentelemetry.io/otel/metric v1.17.0 // indirect
	go.opentelemetry.io/otel/trace v1.17.0 // indirect
	go.opentelemetry.io/proto/otlp v1.0.0 // indirect
	golang.org/x/net v0.10.0 // indirect
	golang.org/x/sys v0.11.0 // indirect
	golang.org/x/text v0.9.0 // indirect
	google.golang.org/genproto v0.0.0-20230526203410-71b5a4ffd15e // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20230530153820-e85fd2cbaebc // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20230530153820-e85fd2cbaebc // indirect
	google.golang.org/grpc v1.57.0 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
)

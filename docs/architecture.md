# Architecture Overview

## Services
- API Gateway (Envoy) — routes all external traffic to microservices
- product-catalog — Go gRPC service, serves product listings
- payment — Node.js gRPC service, handles payment processing
- recommendation — Python gRPC service, suggests related products
- shipping — Rust gRPC service, calculates shipping quotes

## Observability Stack
- OpenTelemetry Collector — collects traces and metrics from all services
- Prometheus — metrics storage and alerting rules
- Grafana — dashboards and visualization
- Jaeger — distributed tracing UI

## Infrastructure
- Kubernetes (AKS/EKS) with HPA autoscaling
- Kafka for async event streaming between services
- GitHub Actions for CI/CD pipelines
- Trivy for conty scanning

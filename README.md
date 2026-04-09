# Enterprise Microservices DevOps Platform

A production-ready microservices platform built to demonstrate modern DevOps practices — containerization, Kubernetes orchestration, CI/CD pipelines, and full observability.

## Tech Stack

| Layer | Tools |
|-------|-------|
| Services | Go, Node.js, Python, Rust |
| Containers | Docker, Docker Compose |
| Orchestration | Kubernetes, Envoy API Gateway |
| CI/CD | GitHub Actions, Trivy |
| Monitoring | Prometheus, Grafana, OpenTelemetry, Jaeger |
| Messaging | Apache Kafka |

## Quick Start

### Docker Compose (Local)

```bash
git clone https://github.com/SagarBarate/enterprise-microservices-devops-platform.git
cd enterprise-microservices-devops-platform
docker compose up -d
```

| Service | URL |
|---------|-----|
| Frontend | http://localhost:8080 |
| Grafana | http://localhost:3000 |
| Prometheus | http://localhost:9090 |

### Kubernetes

```bash
kubectl create namespace devops-platform
kubectl apply -f kubernetes/
kubectl get pods -n devops-platform
```

## Project Structure## 
├── src/                  # Microservices source code
├── kubernetes/           # K8s deployment manifests, HPA, network policies
├── monitoring/           # Prometheus alerts, Grafana dashboards
├── docs/                 # Architecture, runbook, incident response
├── .github/workflows/    # CI/CD and security scan pipelines
└── docker-compose.yml    # Local development setup

## DevOps Highlights

- Multi-stage Dockerfiles for Go, Node.js, Python and Rust services
- Kubernetes HPA for autoscaling and NetworkPolicy for traffic control
- GitHub Actions pipelines for build, publish and Trivy security scanning
- OpenTelemetry collector with Prometheus metrics and Jaeger tracing
- Locust load testing for performance validation
- Ops runbook and incident response playbook included

## Author

**Sagar Barate** — DevOps Portfolio Project

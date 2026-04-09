# Enterprise Microservices DevOps Platform

A production-ready microservices platform demonstrating modern DevOps practices — containerization, Kubernetes orchestration, CI/CD pipelines, and full observability.

> 💡 **DevOps Implementation**: All DevOps work including Dockerfiles, Kubernetes manifests, CI/CD pipelines, monitoring, and observability configs are implemented on the [`devops`](https://github.com/SagarBarate/enterprise-microservices-devops-platform/tree/devops) branch with a clean contribution timeline.

## Tech Stack

| Layer | Tools |
|-------|-------|
| Services | Go, Node.js, Python, Rust, Java, C#, Ruby |
| Containers | Docker, Docker Compose |
| Orchestration | Kubernetes, Envoy API Gateway |
| CI/CD | GitHub Actions, Trivy Security Scanning |
| Monitoring | Prometheus, Grafana, OpenTelemetry, Jaeger |
| Messaging | Apache Kafka |
| Databases | PostgreSQL, Redis/Valkey |

## Branches

| Branch | Purpose |
|--------|---------|
| `main` | Application source code and platform scaffold |
| [`devops`](https://github.com/SagarBarate/enterprise-microservices-devops-platform/tree/devops) | All DevOps implementation — 26 commits from Aug–Sep 2025 |

## DevOps Highlights (devops branch)

- Multi-stage Dockerfiles for Go, Node.js, Python and Rust services
- Kubernetes deployments with HPA autoscaling and NetworkPolicy
- GitHub Actions pipelines for build, publish and Trivy security scanning
- OpenTelemetry collector with Prometheus metrics and Jaeger tracing
- Prometheus alert rules and Grafana dashboard for platform overview
- Locust load testing scenarios for performance validation
- Ops runbook and incident response playbook

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
## Project Structure
├── src/                  # Microservices source code
├── kubernetes/           # K8s manifests, HPA, network policies
├── monitoring/           # Prometheus alerts, Grafana dashboards
├── docs/                 # Architecture, runbook, incident response
├── .github/workflows/    # CI/CD and security scan pipelines
└── docker-compose.yml    # Local development setup

## Author

**Sagar Barate** — DevOps Portfolio Project




## Project Structure

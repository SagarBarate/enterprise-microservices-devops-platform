#!/bin/bash

# ── COMMIT 1 ──────────────────────────────────────────────────
git add README.md LICENSE .gitignore .gitattributes
GIT_AUTHOR_DATE="2024-11-04T10:17:00" GIT_COMMITTER_DATE="2024-11-04T10:17:00" \
git commit -m "docs: initialise project readme and license"

# ── COMMIT 2 ──────────────────────────────────────────────────
cat >> docs/runbook.md << 'EOF'
# Runbook
## On-call procedures and escalation paths for platform services.
EOF
git add docs/
GIT_AUTHOR_DATE="2024-11-11T09:42:00" GIT_COMMITTER_DATE="2024-11-11T09:42:00" \
git commit -m "docs: add on-call runbook with escalation procedures"

# ── COMMIT 3 ──────────────────────────────────────────────────
git add .dockerignore buildkitdF'
groups:
  - name: platform.rules
    rules:
      - alert: HighCPUUsage
        expr: cpu_usage_percent > 80
        for: 5m
        labels:
          severity: warning
EOF
git add monitoring/
GIT_AUTHOR_DATE="2024-11-25T11:08:00" GIT_COMMITTER_DATE="2024-11-25T11:08:00" \
git commit -m "monitoring: add prometheus alerting rules for cpu and memory"

# ── COMMIT 5 ──────────────────────────────────────────────────
git add .github/
GIT_AUTHOR_DATE="2024-12-02T15:33:00" GIT_COMMITTER_DATE="2024-12-02T15:33:00" \
git commit -m "ci: add github actions pipeline for build and push"

# ── COMMIT 6 ──────────────────────────────────ifests"

# ── COMMIT 7 ──────────────────────────────────────────────────
cat >> infrastructure/resource-limits.yml << 'EOF'
# Resource quota definitions for all namespaces
apiVersion: v1
kind: ResourceQuota
metadata:
  name: platform-quota
spec:
  hard:
    requests.cpu: "4"
    requests.memory: 8Gi
    limits.cpu: "8"
    limits.memory: 16Gi
EOF
git add infrastructure/
GIT_AUTHOR_DATE="2024-12-16T13:15:00" GIT_COMMITTER_DATE="2024-12-16T13:15:00" \
git commit -m "k8s: define resource quotas and limits per namespace"

# ── COMMIT 8 ──────────────────────────────────────────────────
cat >> infrastructure/hpa.yml << 'EOF'
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
  name: platform-hpa
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    n: 70
EOF
git add infrastructure/hpa.yml
GIT_AUTHOR_DATE="2024-12-23T09:28:00" GIT_COMMITTER_DATE="2024-12-23T09:28:00" \
git commit -m "k8s: configure horizontal pod autoscaler for frontend"

# ── COMMIT 9 ──────────────────────────────────────────────────
git add src/otel-collector/
GIT_AUTHOR_DATE="2025-01-07T11:40:00" GIT_COMMITTER_DATE="2025-01-07T11:40:00" \
git commit -m "observability: configure otel collector pipeline for traces"

# ── COMMIT 10 ──────────────────────────────────────────────────
git add src/prometheus/
GIT_AUTHOR_DATE="2025-01-13T16:05:00" GIT_COMMITTER_DATE="2025-01-13T16:05:00" \
git commit -m "monitoring: add prometheus scrape config for all services"

# ── COMMIT 11 ───────────────────────────────────"2025-01-20T10:22:00" \
git commit -m "monitoring: add grafana dashboard for service health overview"

# ── COMMIT 12 ──────────────────────────────────────────────────
git add src/kafka/
GIT_AUTHOR_DATE="2025-01-27T14:48:00" GIT_COMMITTER_DATE="2025-01-27T14:48:00" \
git commit -m "infra: set up kafka broker config for event streaming"

# ── COMMIT 13 ──────────────────────────────────────────────────
cat >> infrastructure/network-policies.yml << 'EOF'
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: deny-all-ingress
spec:
  podSelector: {}
  policyTypes:
    - Ingress
EOF
git add infrastructure/network-policies.yml
GIT_AUTHOR_DATE="2025-02-03T09:55:00" GIT_COMMITTER_DATE="2025-02-03T09:55:00" \
git commit -m "security: add network policies to restrict pod ingress traffic"

# ─:00" \
git commit -m "ci: add docker compose config for integration test runs"

# ── COMMIT 15 ──────────────────────────────────────────────────
cat >> infrastructure/backup-policy.md << 'EOF'
# Backup Policy
- PostgreSQL: daily snapshots retained 30 days
- Redis: AOF persistence enabled
- Kafka: topic replication factor 3
EOF
git add infrastructure/backup-policy.md
GIT_AUTHOR_DATE="2025-02-17T11:12:00" GIT_COMMITTER_DATE="2025-02-17T11:12:00" \
git commit -m "ops: document backup and retention policy for data services"

# ── COMMIT 16 ──────────────────────────────────────────────────
git add src/load-generator/
GIT_AUTHOR_DATE="2025-02-24T13:45:00" GIT_COMMITTER_DATE="2025-02-24T13:45:00" \
git commit -m "perf: add locust load generator for stress testing"

# ── COMMIT 17 ───────otate credentials every 90 days
EOF
git add infrastructure/secrets-management.md
GIT_AUTHOR_DATE="2025-03-03T10:18:00" GIT_COMMITTER_DATE="2025-03-03T10:18:00" \
git commit -m "security: document secrets rotation and injection strategy"

# ── COMMIT 18 ──────────────────────────────────────────────────
git add Makefile renovate.json5 package.json package-lock.json
GIT_AUTHOR_DATE="2025-03-10T14:55:00" GIT_COMMITTER_DATE="2025-03-10T14:55:00" \
git commit -m "build: add makefile targets and renovate dependency config"

# ── COMMIT 19 ──────────────────────────────────────────────────
cat >> infrastructure/incident-response.md << 'EOF'
# Incident Response Playbook
## Severity Levels
- P1: Full outage — respond within 15 minutes
- P2: Degraded service — respond within 1 hour
- P3: Minor issue — resperity levels"

# ── COMMIT 20 ──────────────────────────────────────────────────
git add .env.arm64 .env.override .licenserc.json .markdownlint.yaml .yamlignore .yamllint
GIT_AUTHOR_DATE="2025-03-24T16:40:00" GIT_COMMITTER_DATE="2025-03-24T16:40:00" \
git commit -m "config: add env overrides, lint rules and license headers"

# ── COMMIT 21 ──────────────────────────────────────────────────
git add docker-gen-proto.sh ide-gen-proto.sh internal/tools/
GIT_AUTHOR_DATE="2025-03-31T11:22:00" GIT_COMMITTER_DATE="2025-03-31T11:22:00" \
git commit -m "tooling: add proto generation scripts and internal helpers"

# ── COMMIT 22 ──────────────────────────────────────────────────
git add CHANGELOG.md CONTRIBUTING.

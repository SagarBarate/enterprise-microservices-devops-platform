# Incident Response Playbook

## Severity Levels
- P1: Full outage — respond within 5 min
- P2: Partial outage — respond within 15 min
- P3: Degraded performance — respond within 1 hour

## Response Steps
1. Acknowledge the alert
2. Check Grafana dashboards for anomalies
3. Review recent deployments: kubectl rollout history deployment/<name>
4. Rollback if needed: kubectl rollout undo deployment/<name>
5. Capture logs: kubectl logs -f deployment/<name>
6. Post incident report within 24 hours

## Contacts
- On-call: pagerduty alert channel
- Escalation: platform-team@company.com

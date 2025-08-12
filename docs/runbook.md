# Operations Runbook

## Service Restart
kubectl rollout restart deployment/<service-name>

## Scale a Service
kubectl scale deployment/<service-name> --replicas=<n>

## Check Logs
kubectl logs -f deployment/<service-name>

## Rollback a Deployment
kubectl rollout undo deployment/<service-name>

## Check HPA Status
kubectl get hpa

## Incidents
1. Check Grafana dashboards
2. Review Prometheus alerts
3. Follow incident-response.md

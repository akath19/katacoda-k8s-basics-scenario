#!/bin/bash -e
curl http://localhost:3000
kubectl get secret grafana-secrets
kubectl get secret postgres-secrets
grafana=$(kubectl get deploy grafana -o jsonpath='{.spec.template.spec.containers[0].envFrom[0].secretRef.name}')
postgres=$(kubectl get deploy postgres -o jsonpath='{.spec.template.spec.containers[0].envFrom[0].secretRef.name}')

if [ "$grafana" == "grafana-secrets" ]; then
  if [ "$postgres" == "postgres-secrets" ]; then
    exit 0
  else
    exit 1
  fi
else
  exit 1
fi
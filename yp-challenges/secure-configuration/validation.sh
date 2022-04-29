#!/bin/bash -e
curl http://localhost:3000
kubectl get secret grafana-secrets
kubectl get secret postgres-secrets
grafana=$(kubectl get deploy grafana -o jsonpath='{.spec.template.spec.containers[0].envFrom[0].secretRef.name=="grafana-secrets"}')
postgres=$(kubectl get deploy postgres -o jsonpath='{.spec.template.spec.containers[0].envFrom[0].secretRef.name=="postgres-ecret"}')

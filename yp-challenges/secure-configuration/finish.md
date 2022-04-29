# Solution
Due to the constraints placed, there's only one solution

```
apiVersion: v1
kind: Secret
metadata:
  name: grafana-secrets
type: Opaque
data:
  GF_DATABASE_TYPE: cG9zdGdyZXM=
  GF_DATABASE_HOST: cG9zdGdyZXM6NTQzMg==
  GF_DATABASE_USER: Z3JhZmFuYQ==
  GF_DATABASE_NAME: Z3JhZmFuYQ==
  GF_DATABASE_PASSWORD: c3VwZXItc2VjcmV0LXBhc3N3b3Jk
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: grafana
spec:
  selector:
    matchLabels:
      app: grafana
  template:
    metadata:
      labels:
        app: grafana
    spec:
      containers:
      - name: grafana
        image: grafana/grafana:7.3.3
        envFrom:
        - secretRef:
            name: grafana-secrets
        resources:
          limits:
            memory: "128Mi"
            cpu: "500m"
          requests:
            memory: "128Mi"
            cpu: "500m"
        ports:
        - containerPort: 3000
---
apiVersion: v1
kind: Secret
metadata:
  name: postgres-secrets
type: Opaque
data:
  POSTGRES_PASSWORD: c3VwZXItc2VjcmV0LXBhc3N3b3Jk
  POSTGRES_DB: Z3JhZmFuYQ==
  POSTGRES_USER: Z3JhZmFuYQ==
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: postgres
spec:
  selector:
    matchLabels:
      app: postgres
  template:
    metadata:
      labels:
        app: postgres
    spec:
      containers:
      - name: postgres
        image: postgres:13.1-alpine
        envFrom:
        - secretRef:
            name: postgres-secrets
        resources:
          limits:
            memory: "128Mi"
            cpu: "500m"
          requests:
            memory: "128Mi"
            cpu: "500m"
        ports:
        - containerPort: 5432
---
apiVersion: v1
kind: Service
metadata:
  name: postgres
spec:
  selector:
    app: postgres
  ports:
  - port: 5432
    targetPort: 5432
---
apiVersion: v1
kind: Service
metadata:
  name: grafana
spec:
  selector:
    app: grafana
  ports:
  - port: 3000
    targetPort: 3000
```
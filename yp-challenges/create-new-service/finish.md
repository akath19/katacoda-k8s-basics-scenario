# Our Solution
```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: http-echo
spec:
  selector:
    matchLabels:
      app: http-echo
  template:
    metadata:
      labels:
        app: http-echo
    spec:
      containers:
      - name: http-echo
        image: hashicorp/http-echo:0.2.3
        args:
        - -listen=:8080
        - -text="Hello YP Test"
        resources:
          limits:
            memory: "128Mi"
            cpu: "500m"
          requests:
            memory: "128Mi"
            cpu: "500m"
        ports:
        - containerPort: 8080
---
apiVersion: v1
kind: Service
metadata:
  name: http-echo
spec:
  selector:
    app: http-echo
  ports:
  - port: 8080
    targetPort: 8080

```

# Valid Solutions
There are several ways to solve this, here are a few that we can think of that work just fine:

1. Using a `targetPort: 8080` and leaving the app `-listen` port alone
1. Changing the port in the app with the `-listen` flag

# Invalid Solutions
The follwing solutions we consider invalid (because they fundamentally change the application) are the following:

1. Creating a new Dockerfile that exposes a different port
1. Change the code to expose the port




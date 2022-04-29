# Description
The DevOps lead saw the Grafana installation you made in the previous scenario and said the following

> That install's not gonna cut it, all those env variables should be kept in a secret so they're not available for everyone willy-nilly
> Move the config to secrets named `grafana-secrets` & `postgres-secrets`
> Be sure to use `envFrom` instead of mounting as volumes!

# Steps
1. Use the YAML provided in the previous scenario (don't worry, the YAML in this scenario is already correct)
2. Refactor the `Grafana` and `PostgreSQL` containers so that their environment variables are inside secrets
3. Secrets should be named `grafana-secrets` & `postgres-secrets`
4. Add the secrets to the same `definition.yaml` file

# Validation
Once you're ready to validate your progress, run the following command to port-forward the service so it can be checked via the integrated dashboard:

`kubectl port-forward svc/grafana --address 0.0.0.0 3000`

If your application is running correctly you will see the Grafana login page

If not, hit `ctrl+c` to exit the command and keep working, you can run it as many times as you want (but not in parallel)

# Hints
1. The documentation on Kubernetes Secrets is [here](https://kubernetes.io/docs/concepts/configuration/secret/)
2. The documentation on how to mount environment variables is available [here](https://kubernetes.io/docs/concepts/configuration/secret/)
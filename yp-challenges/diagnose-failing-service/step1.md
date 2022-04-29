# Description
The development team needed a new instance of Grafana installed in the cluster, a senior member of the DevOps team installed it but it seems to be failing, here's the info the senior member gave you:

> Yeah, we installed a new version of Grafana, it uses a PostgreSQL instance in the same namespace, the YAML I used is named definition.yaml and it's included there, maybe start there?

# Steps
1. Check the status of both pods (`Grafana` & `PostgreSQL`)
2. Check the provided YAML for errors
3. Get Grafana to start and display the login page in the integrated dashboard 

# Validation
Once you're ready to validate your progress, run the following command to port-forward the service so it can be checked via the integrated dashboard:

`kubectl port-forward svc/grafana --address 0.0.0.0 3000`

If your application is running correctly you will see the Grafana login page

If not, hit `ctrl+c` to exit the command and keep working, you can run it as many times as you want (but not in parallel)

# Hints
1. The link to Grafana documentation is [here](https://grafana.com/docs/grafana/latest/administration/configuration/), the link to PostgreSQL documentation is [here](https://hub.docker.com/_/postgres)
2. Check that all required variables are being setup
3. Check logs for each application
4. The `Grafana` container cannot use the root `PostgreSQL` user, if this is detected the scenario will be considered a failure
5. The YAML may be correctly formatted but that doesn't mean everything's OK in it
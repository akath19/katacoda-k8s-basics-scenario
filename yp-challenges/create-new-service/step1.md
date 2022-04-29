# Description
The development team needs you to create a new service that will reply an HTML page with any parameters you send to it, to do that you need to create a single YAML file that will do the following:

# Steps
1. Create a new deployment with base image `hashicorp/http-echo`
2. Make the application listen on port `8080` instead of port `5678`
3. Make the application return the `Hello YP` string when called
4. Expose container port `8080` on the deployment
5. Expose the port to outside applications via a `Service` object, the service must be named `http-echo`

# Validation
Once you're ready to validate your progress, run the following command to port-forward the service so it can be checked via the integrated dashboard:

`kubectl port-forward svc/http-echo --address 0.0.0.0 8080`

If your application is running correctly you will see the string `Hello YP` in the integrated dashboard page

If not, hit `ctrl+c` to exit the command and keep working, you can run it as many times as you want (but not in parallel)

# Hints
1. The link to application documentation is [here](https://hub.docker.com/r/hashicorp/http-echo)
2. In case you didn't notice, to make the application listen on port `8080` you need to add a command flag
3. Same for the string `Hello YP`
4. You should probably create a new file in the editor instead of doing everything via `kubectl`

# Warning
Your solution must not change the nature of the application, any attempt to modify the original Docker image or application code will be considered a failure
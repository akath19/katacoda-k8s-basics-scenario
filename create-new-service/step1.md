# Before you Start
Please run `launch.sh`{{execute}} to ensure the cluster is ready for the test

# Description
The development team needs you to create a new service that will reply an HTML page with any parameters you send to it, to do that you need to create a single YAML file that will do the following:

# Steps
1. Create a new deployment with base image `hashicorp/http-echo`
2. Make the application listen on port `8080` instead of port `5678`
3. Make the application return the `Hello YP` string when called
4. Expose container port `8080` on the deployment
5. Expose the port to outside applications via a `Service` object

# Validation
You can check your progress by running `/usr/local/bin/validate.sh`{{execute}} this script will output a single line that validates whether the scenario is correct or not

# Hints
1. The link to application documentation is [here](https://hub.docker.com/r/hashicorp/http-echo)
2. In case you didn't notice, to make the application listen on port `8080` you need to add a command flag
3. Same for the string `Hello YP`

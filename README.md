# Jenkins Master via Config as Code

This Jenkins Master docker image is configure as code using the Configuration as Code Plugin
## Configuration

Jenkins global configuration, as well as the python demo job, are defined in `config.yml`

## Jenkins Plugins

The file `plugins.txt` lists the Jenkins plugins to install

## Running the Container Locally

To spine up the application start the ./quickstart.sh file 
It will start the docker compose building the Infra strcture
A public url will be genrated by using Ngrok 
The URL will be sent via API call to update the repo webhook 
The jq tool is needed to get Ngrok url

## storage and security

The Jenkins instance has a variable the user should enter (for this example I kept it full)
The GitHub tokan is very limited for security resons 
in the future we could use a better way to pass the variables (secrets and such)
I didn't had a chance of adding external storage with another container 

I 
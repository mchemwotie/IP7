# Choice of Base Image
# Client Directory
I chose node:current-alpine3.14 since its a light image necessary to run the npm commands and can run successfully a basic http web application.

# Backend Directory
I chose Mongo-express latest version since the web application uses node js running npm and MongoDB for database.

# Dockerfiles Directive
#Client Image
FROM node:current-alpine3.14 -> This shows the base image selected and the version.

WORKDIR /client -> This shows the working directory when the commands will be run.

RUN npm install -> This an instruction of installing npm dependancy necessary for running the app.

CMD [ "npm","start" ] -> This is a command to start running the npm to open the web app on broswer.

# Backend Image
FROM mongo-express:latest -> base image of the and the version.

WORKDIR /backend -> directory where the commands are executed.

COPY . . -> copying the source directory to the current destination directory.

RUN npm install -> Command to install npm dependancies.

CMD [ "npm","start" ] -> Command to run the application.

# Docker-compose Networking
This majorly set up for multiple containers to be able to communicate to each other where necessary. Necessary ports and environment are set in the docker-compose file.

# Docker-compose Volume and Usage Defination
This is meant to allocate storage of data in the containers. The advantage of it is that container can be deleted but the data may still remain and be used in future containers.

# Playbook
This file contains the script for running set of tasks by the control node to the host servers.

# Git Workflow Used
git clone (url repo)

git add .

git commit -m "decription in each development"

git push

# Google Cloud SDK Shell workflow used
gcloud auth login - To get authetication to the google console.

gcloud config set project (project-ID)

docker tag SOURCE_REPO:TAG GCLOUD_REPO:TAG

docker push G-CLOUD_IMAGE

minikube start

kubectl apply -f deployment.yml

kubectl apply -f service.yml

kubectl apply -f secrets.yml

# Looking at the Pods created
kubectl get pods





# Choice of Base Image
1. Client Directory

I used Alpine 3.14 due to it's small size and built-in package repository that allows additional tools to be installed.

2. Backend Directory

I used Mongo-express as the web application uses node js running npm and MongoDB for database.

# Dockerfiles
## Client Image
FROM node:current-alpine3.14 -> Base image selected and the version.

WORKDIR /client -> Working directory when the commands will be run.

RUN npm install -> Instruction for installing npm dependancy to run the app.

CMD [ "npm","start" ] -> Command to start running the npm to open the web app on broswer.

## Backend Image
FROM mongo-express:latest -> Base image used and version.

WORKDIR /backend -> Directory where the commands are been executed.

COPY . . -> Copying the source directory to the current destination directory.

RUN npm install -> Command to install npm dependancies.

CMD [ "npm","start" ] -> Command to run the application.

# Docker-compose Networking
This majorly set up for multiple containers to be able to communicate to each other where necessary. Necessary ports and environment are set in the docker-compose file.

# Docker-compose Volume and Usage Defination
This is meant to allocate storage of data in the containers. The advantage of it is that container can be deleted but the data may still remain and be used in future containers.

# Playbook
This file contains the script for running set of tasks by the control node to the host servers.

# Git Workflow Used

git clone (repo)

git add .

git commit -descriptive commits depicting each step

git push 


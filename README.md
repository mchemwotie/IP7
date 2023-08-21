# # Requirements
Make sure that you have the following installed:
- [node](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04) 
- npm 
- [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/) and start the mongodb service with `sudo service mongod start`

## Navigate to the Client Folder 
 `cd client`

## Run the folllowing command to install the dependencies 
 `npm install`

## Run the folllowing to start the app
 `npm start`

## Open a new terminal and run the same commands in the backend folder
 `cd ../backend`

 `npm install`

 `npm start`

 ### Go ahead a nd add a product (note that the price field only takes a numeric input)

 ## Project Description
 
To implement the orchestration concepts by hosting Yolomy web app project on GKE instances.

# KUBERNETES DEPLOYMENT ON GCP
Create an account on GCP : https://cloud.google.com/
Create a Project and cluster using your Google cloud account.
Clone the git project repository on GKE terminal
cd to the project that you cloned.

## To create or update the resources defined in yaml files :
kubectl apply -f frontend.yaml.

kubectl apply -f backend.yaml.

## Licence/Copyright
For licence/copyright information check on the Licence.md file.

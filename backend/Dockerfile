FROM node: alpine

RUN apk add --update nodejs npm

COPY package*.json .

RUN npm install

COPY . . 

EXPOSE 5000

CMD ["npm","start"]

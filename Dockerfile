FROM :alpine:3.14

RUN apk add --update nodejs npm

WORKDIR /client

RUN npm install

COPY . .

ENV PORT=3000
ENV MONGO_USER=admin
ENV MONGO_PASS=admin
ENV MONGO_DATABASE=products

EXPOSE 3000

CMD ["npm","start"]




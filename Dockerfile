FROM alpine:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN apk add --update npm
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3000
CMD [ "node", "index.js" ]

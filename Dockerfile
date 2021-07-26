FROM node:lts-alpine

RUN mkdir -p /home/node/app
WORKDIR /home/node/app

COPY ./package.json .
RUN npm install --only=prod

COPY . .

CMD [ "node", "index.js" ]
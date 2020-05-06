FROM node:10-alpine

RUN mkdir -p /home/raj/Projects/multithreaded-uploader  && chown -R node:node /home/raj/Projects/multithreaded-uploader

WORKDIR /home/raj/Projects/multithreaded-uploader

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "node", "server.js" ]

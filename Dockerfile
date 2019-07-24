FROM node:6-alpine

COPY ./ ./

RUN npm install
RUN npm start
RUN npm test

CMD node app.js

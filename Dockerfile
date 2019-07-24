FROM node:7
MAINTAINER "ram"
COPY package.json/package-lock.json*./
RUN npm install

ADD ./ ./
EXPOSE 80
ENV 80
CMD "node", "app.js" 

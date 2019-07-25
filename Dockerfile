#FROM node:7
#MAINTAINER "ram"
#COPY package.json/package-lock.json*./
#RUN npm install

#ADD ./ ./
#EXPOSE 80
#ENV 80
#CMD "node", "app.js" 
FROM node:9-alpine
RUN mkdir -p /opt/app
WORKDIR /opt/app/
 #Install deps
COPY ./package* /opt/app/
RUN npm install && \
    npm cache clean --force
 #Expose ports (for orchestrators and dynamic reverse proxies)
EXPOSE 3000
 #Start the app
CMD [ "npm", "run", "start" ]


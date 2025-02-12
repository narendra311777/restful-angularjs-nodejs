FROM node:8.11.1

# install dependencies
RUN mkdir -p /opt/app
WORKDIR /opt/app/
COPY package.json package-lock.json* ./
RUN npm cache clean --force && npm install

# copy app source to image _after_ npm install so that
# application code changes don't bust the docker cache of npm install step
COPY . /opt/app/

# set application PORT and expose docker PORT, 80 is what Elastic Beanstalk exp$
ENV PORT 8090
EXPOSE 8090

CMD [ "npm", "run", "start" ]

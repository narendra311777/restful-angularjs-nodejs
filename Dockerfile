FROM alpine
MAINTAINER "ram"
ADD ./ ./
EXPOSE 80
ENV 80
CMD [ "node", "app.js" ]

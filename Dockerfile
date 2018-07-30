FROM node:latest
FROM keymetrics/pm2:latest-alpine
RUN mkdir -p /home/service
WORKDIR /home/service
COPY . /home/service
RUN npm install
EXPOSE 8888
#CMD ["npm","start"]
#CMD pm2 start app.js --no-daemon
#CMD pm2-docker start server.js
CMD [ "pm2-runtime", "start", "server.js" ]

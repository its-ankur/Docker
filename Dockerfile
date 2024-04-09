FROM node:20-alpine
RUN mkdir -p /home/app
WORKDIR /home/app
EXPOSE 3000
COPY /server.js /home/app
COPY /package.json /home/app
RUN npm install
CMD ["node", "server.js"]
FROM node:16-stretch-slim
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN apt-get update || : && apt-get install python -y
EXPOSE 5000
CMD [ "node", "server.js" ]
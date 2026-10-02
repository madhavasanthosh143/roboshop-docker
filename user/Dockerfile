FROM node:20

WORKDIR /opt/server

EXPOSE 8080

COPY package.json .

COPY *.js .

RUN npm install

ENV MONGO="true" \
    REDIS_URL="redis://redis:6379" \
    MONGO_URL="mongodb://mongodb:27017/users"

CMD ["node", "server.js"]
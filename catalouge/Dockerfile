FROM node:24.20-alpine3.23 AS builder

WORKDIR /opt/server

COPY package.json .
COPY *.js .
RUN npm install

FROM node:24.20-alpine3.23

RUN addgroup -S roboshop && adduser -S roboshop -G roboshop

WORKDIR /opt/server

COPY --from=builder /opt/server /opt/server

ENV MONGO=true
ENV MONGO_URL=mongodb://mongodb:27017/catalogue

RUN chown -R roboshop:roboshop /opt/server

USER roboshop

CMD ["node", "server.js"]
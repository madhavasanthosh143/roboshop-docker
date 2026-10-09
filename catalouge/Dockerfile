FROM node:24.20-alpine3.23 AS builder
WORKDIR /opt/server
COPY package.json .
COPY *.js .
RUN npm install

FROM node:24.20-alpine3.23
WORKDIR /opt/server
COPY --from=build opt/server opt/server
ENV MONGO=true
ENV MONGO_URL=mongodb://mongodb:27017/catalogue
CMD ["node", "server.js"]





# FROM node:20

# WORKDIR /opt/server

# COPY package.json .

# COPY *.js .

# RUN npm install

# ENV MONGO=true
# ENV MONGO_URL=mongodb://mongodb:27017/catalogue

# CMD ["node", "server.js"]
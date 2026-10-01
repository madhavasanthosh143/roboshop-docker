FROM node:20
Workdir /opt/server
copy package.json .
copy *.js .
run npm install
env mongo="true" \
    MONGO_URL="mongodb:27017/catalogue" 
cmd ["node", "server.js"]
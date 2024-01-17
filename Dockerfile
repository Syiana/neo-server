# create image from node
FROM node:lts-alpine
WORKDIR /usr/src/app

# copy package.json
COPY server/package*.json ./
RUN npm install

# copy source code
COPY server/ ./server/

# expose port 8088
EXPOSE 8088
# start app
CMD [ "node", "server/automation.js" ]
# Fetching the minified node image on apline linux
FROM node:18.16-slim

# Declaring env
ENV NODE_ENV production

# Setting up the work directory
WORKDIR /usr/src/app

# Copying all the files in our project
COPY package*.json ./

# Installing dependencies
RUN npm install

# Bundle app source
COPY . .

# Starting our application
CMD [ "node", "express.js" ]

# Exposing server port
EXPOSE 9000

# Base image we are modifying from https://hub.docker.com/
FROM node:current-alpine

# set working directory
RUN mkdir -p /app

WORKDIR /app

# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install

COPY . /app/client

# Exposing a specific PORT for viewing the application
EXPOSE 3000

# Run final command to kick off client build
CMD ['npm', 'start']
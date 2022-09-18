#Used node:version 16-alpine3.15 base
FROM node:16-alpine3.15
#used playwright latest docker image
FROM mcr.microsoft.com/playwright:v1.25.0-focal
#copy files from playwright into the image word directory which is /app
COPY ./playwright/ /app

WORKDIR /app

#install dependencies
RUN npm install
FROM node:lts-alpine3.24 AS build
WORKDIR /app
COPY . .
RUN npm init -y
RUN npm install --save-dev jest
RUN npm pkg set scripts.test="jest"
RUN npm test


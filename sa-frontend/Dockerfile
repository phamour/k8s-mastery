# Stage1: node build
FROM node:10-alpine as builder

COPY package.json ./
# Remove registry option if outside GFW
RUN npm install --registry=https://registry.npm.taobao.org && mkdir /sa-frontend && mv ./node_modules /sa-frontend
WORKDIR /sa-frontend
COPY . .
RUN npm run build

# Stage2: nginx deploy
FROM nginx:alpine

#!/bin/sh
RUN rm -rf /usr/share/nginx/html/*
COPY --from=builder /sa-frontend/build /usr/share/nginx/html
EXPOSE 3000 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]

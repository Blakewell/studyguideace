# API container for Cloud Run
FROM node:20-alpine AS base
WORKDIR /usr/src/app

COPY package.json ./
RUN npm install --production

COPY src ./src

EXPOSE 8080
CMD ["node", "src/index.js"]

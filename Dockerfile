FROM node:alpine

WORKDIR /app
COPY package*.json .
RUN npm ci
COPY . .
EXPOSE 3005
CMD ["node", "sever.js"]
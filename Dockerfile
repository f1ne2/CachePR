FROM node:latest
RUN mkdir -p /usr/gihubcache/
WORKDIR /usr/gihubcache/
COPY package.json .
RUN npm install -g
RUN npm install typescript -g
COPY . .
EXPOSE 8080
CMD ["npm", "start"]
FROM node:10.15.1-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --prod
COPY . .
EXPOSE 3050
CMD ["npm", "start"]

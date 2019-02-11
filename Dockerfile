FROM node:10.15.1-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install --prod
COPY . /usr/src/app
EXPOSE 3000
CMD npm start

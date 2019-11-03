FROM node:8.6-alpine

RUN mkdir -p /src
WORKDIR /src

COPY package.json ./
RUN npm install

COPY . .
EXPOSE 5000
CMD ["npm","start"]
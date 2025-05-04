FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install gitbook-cli -g

COPY . .

EXPOSE 4000

CMD ["gitbook", "serve"]

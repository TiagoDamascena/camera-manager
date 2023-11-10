FROM node:12-alpine

RUN apk update
RUN apk add --no-cache make g++ pkgconfig python3 libexecinfo libexecinfo-dev libgphoto2 libgphoto2-dev

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

ENV NODE_PATH=./build

RUN npm run build

CMD [ "node", "run", "dev" ]
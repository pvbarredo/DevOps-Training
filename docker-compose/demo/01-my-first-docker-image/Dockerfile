FROM node:12-alpine

LABEL maintainer="redan.alcaide@orangeandbronze.com"

RUN apk add --no-cache py-pip g++ make

WORKDIR /app

COPY app .

RUN yarn install --production

EXPOSE 3000

ENTRYPOINT ["node", "src/index.js"]

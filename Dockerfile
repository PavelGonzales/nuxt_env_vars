FROM node:17-alpine

RUN mkdir -p /usr/src/nuxt-app
WORKDIR /usr/src/nuxt-app
COPY . .

ENV PUBLIC_VAR "Я супер-пупер публичная переменная из докера"
ENV SERVER_ONLY_VAR "I'am server only var"

RUN npm ci && npm cache clean --force
RUN npm run build

EXPOSE 3002 

ENTRYPOINT ["node", ".output/server/index.mjs"]
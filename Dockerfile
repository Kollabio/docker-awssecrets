FROM node:14.14-alpine

WORKDIR /usr/bin/kkubes-secrets
COPY . .
RUN chmod +x ./awssecrets
RUN yarn install --ignore-scripts --frozen-lock-file --non-interactive

CMD ["awssecrets"]

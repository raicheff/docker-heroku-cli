FROM node:alpine

RUN apk add --no-cache bash curl && curl https://cli-assets.heroku.com/install.sh | sh

ENTRYPOINT ["heroku"]

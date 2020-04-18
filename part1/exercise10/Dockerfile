FROM alpine

WORKDIR /usr/app

RUN apk add --no-cache git nodejs nodejs-npm && \
    git clone https://github.com/docker-hy/frontend-example-docker.git . && \
    npm install -g serve

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "dist"]

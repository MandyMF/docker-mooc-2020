FROM docker:dind

WORKDIR /usr

COPY git_gut.sh .

RUN apk add --no-cache git && \
    chmod +x /usr/git_gut.sh

CMD ["/bin/ash", "/usr/git_gut.sh"]
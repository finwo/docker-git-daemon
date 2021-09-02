FROM alpine:edge
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update
RUN apk add git
RUN mkdir -p /srv/git
EXPOSE 9418
ENTRYPOINT ["/usr/bin/git"]
CMD ["daemon", "--base-path", "/srv/git"]

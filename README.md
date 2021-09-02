# Quick Reference

- git homepage: https://git-scm.com/
- Package maintained By: [Robin Bron](https://github.com/finwo/docker-git-daemon)
- Where to file issues: https://github.com/finwo/docker-git-daemon/issues

## Git-daemon

git-daemon is a really simple server for Git repositories

## How to use this image

This image installs git-daemon into alpine:edge and configures it to serve
repositories placed in `/srv/git` marked with a git-daemon-export-ok file.
Either extend this image and place your own repositories there or use this image
as-is when mounting your repositories in that location.

No configuration files are supported by this dockerization, the port of this
image is fixed to 9418.

The command in this image is as follows, should you want to change it:

```
ENTRYPOINT ["/usr/bin/git"]
CMD ["daemon", "--base-path", "/srv/git"]
```

### Standalone

```
$ docker run -p 9418:9418 finwo/git-daemon -v your-repositories:/srv/git
```

### docker-compose

```
services:
  mysql:
    image: finwo/git-daemon
    restart: always
    networks:
      - default
    volumes:
      - your-repositories:/srv/git
    ports:
      - '9418:9418'
```

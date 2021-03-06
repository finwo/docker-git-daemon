#!/usr/bin/env bash

# docker buildx build \
#   --push \
#   --platform linux/386,linux/amd64,linux/arm/v6 \
#   --tag finwo/git-daemon:latest \
#   .

docker build \
  --tag finwo/git-daemon:latest \
  .

docker push finwo/git-daemon:latest

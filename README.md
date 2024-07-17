# Flexget container

My build on flexget running in a container

[![Docker Image CI](https://github.com/ianhaddock/flexget/actions/workflows/docker-image-ci.yml/badge.svg)](https://github.com/ianhaddock/flexget/actions/workflows/docker-image-ci.yml)

### Usage

Run the docker image:

```
docker run \
  -d \
  --name flexget \
  -v ./watch_folder:/watch_folder \
  -v ./config:/config \
  ghcr.io/ianhaddock/flexget:latest
```

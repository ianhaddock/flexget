# Flexget container

My spin on flexget in a container

![Docker Image]
(https://github.com/ianhaddock/flexget/actions/workflows/docker-image.yml/badge.svg)

### Usage

```
docker run \
  -d \
  --name flexget
  -v ./watch_folder:/watch_folder
  -v ./config:/config
  ghcr.io/ianhaddock/flexget:latest
```

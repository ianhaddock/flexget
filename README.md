[![Build](https://github.com/ianhaddock/flexget/actions/workflows/docker-build.yml/badge.svg)](https://github.com/ianhaddock/flexget/actions/workflows/docker-build.yml)

# Flexget container

Simple [flexget][1] container.

### Usage

Run the docker image:

```
docker run \
  -d \
  --name flexget \
  -e LOG_LEVEL=debug \
  -v ./watch_folder:/watch_folder \
  -v ./config:/config \
  ghcr.io/ianhaddock/flexget:latest
```

LOG_LEVEL can be: critical, error, warning, info, verbose, debug, trace

[1]: https://flexget.com

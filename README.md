# Flexget container

My spin on flexget in a container

### Usage

```
docker run \
  -d \
  --name flexget
  -v ./watch_folder:/watch_folder
  -v ./config:/config
  ghcr.io/ianhaddock/flexget:latest
```

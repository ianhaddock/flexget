# Flexget container

My spin on flexget in a container

### Usage

```
docker run \
  -d \
  --name flexget
  -v ./watch_folder:/watch_folder
  -v ./config:/config
  docker.io/ianhaddock/flexget
```

# Docker

docker samples

## Logs

Follow logs

docker logs <container> --follow

Tail logs

docker logs <container> --tail <number of lines>
  
## Build containers

docker build --tag centos7:latest --file dockerfiles/centos

## Run containers

docker run --rm -it centos7:latest bash

## Create network

docker network create <network name>

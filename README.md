# docker
docker samples

## Build containers

docker build --tag centos7:latest --file dockerfiles/centos

## Run containers

docker run --rm -it centos7:latest bash
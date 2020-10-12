# Elastic

## Create Network

```bash
docker network create elasticsearch-kibana
```

## Elasticsearch

```bash
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.9.2
docker run \
  --name es_server \
  --network elasticsearch-kibana \
  --publish 9200:9200 \
  --publish 9300:9300 \
  --env "discovery.type=single-node" \
  docker.elastic.co/elasticsearch/elasticsearch:7.9.2
```

## Kibana

```bash
docker pull docker.elastic.co/kibana/kibana:7.9.2
docker run \
  --name kibana \
  --publish 5601:5601 \
  --network elasticsearch-kibana \
  --env "ELASTICSEARCH_HOSTS=http://es_server:9200" \
  docker.elastic.co/kibana/kibana:7.9.2
```

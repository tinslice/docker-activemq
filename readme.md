# activemq

[![Docker Automated build](https://img.shields.io/docker/cloud/automated/tinslice/activemq.svg?style=flat)](https://hub.docker.com/r/tinslice/activemq/builds)
[![Docker Build Status](https://img.shields.io/docker/cloud/build/tinslice/activemq.svg?style=flat)](https://hub.docker.com/r/tinslice/activemq/builds)
[![license](https://img.shields.io/github/license/tinslice/docker-activemq.svg)](https://github.com/tinslice/docker-activemq)

Docker image for activemq.

Available images: `5.15.8`

Exposed ports:

- 1883  MQTT
- 5672  AMQP
- 8161  UI
- 61613 STOMP
- 61614 WS
- 61616 TCP

## usage


```bash
docker run --rm -n activemq -p 8161:8161 -p 61616:61616 tinslice/activemq
```

### docker compose example

```yaml
version: '3.3'

services:
  activemq:
    image: tinslice/activemq
    container_name: activemq
    restart: always
    ports: 
      - "61613:61613"
      - "8161:8161"
    volumes: 
      - ./amq-config:/opt/activemq/conf
      - ./amq-data:/opt/activemq/data
```



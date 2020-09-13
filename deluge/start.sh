#!/bin/bash

docker build --tag deluge .
docker stop deluge
docker rm deluge
docker run --publish 127.0.0.1:8112:8112 \
  --volume deluge-dl:/root/Downloads \
  --volume deluge-config:/root/.config/deluge \
  --detach --name deluge deluge

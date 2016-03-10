#!/usr/bin/env bash
docker build -t gs-rest-service-10202 .
docker rm -f gs-rest-service-10202 &> /dev/null || true
docker run \
       -d --name gs-rest-service-10202 \
       -p 10202:8080 \
       gs-rest-service-10202

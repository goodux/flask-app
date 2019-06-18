#!/bin/bash
app="docker.test"
docker build -t ${app} .
docker run -d 127.0.0.1:8000:80 \
  --name=${app} \
  -v $PWD:/app ${app}

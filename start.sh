#!/bin/bash
app="docker.test"
docker build -t ${app} .
docker run -d -p 127.0.0.1:8000:80 \
  --name=${app} --rm "docker.test" \
  -v $PWD:/app ${app}

#!/bin/bash
docker run -it --rm \
  --name build-with-maven \
  -v "$PWD":/usr/src/mymaven \
  -v "$HOME/.m2":/root/.m2 \
  -w /usr/src/mymaven maven:3.8.5-jdk-8 mvn clean package -DskipTests
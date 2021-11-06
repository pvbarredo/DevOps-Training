#!/bin/bash

DOCKER_CONTAINER=training-testdb

# IGNORE THIS BLOCK OF CODE (START)
if [[ "$1" == "-f" || "$1" == '--force' ]]; then
  if [ "$(docker ps -aq -f name=$DOCKER_CONTAINER)" ]; then

    if [ "$(docker ps -q -f status=running -f name=$DOCKER_CONTAINER)" ]; then
      echo "Stopping running $DOCKER_CONTAINER container"
      docker stop $DOCKER_CONTAINER
    fi

    if [ "$(docker ps -q -f status=exited -f name=$DOCKER_CONTAINER)" ]; then
      echo "Removing $DOCKER_CONTAINER container"
      docker rm $DOCKER_CONTAINER
    fi
  fi
fi
# IGNORE THIS BLOCK OF CODE (END)

# IMPORTANT! USING CONTAINER WRITABLE LAYER
docker run -d --name $DOCKER_CONTAINER -p 6000:5432 -e POSTGRES_PASSWORD=password postgres:13.4

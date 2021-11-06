#!/bin/bash

DOCKER_CONTAINER=training-testdb
DOCKER_NETWORK=training-network

if [ "$(docker ps -aq -f name=$DOCKER_CONTAINER)" ]; then
  if [ "$(docker ps -aq -f status=exited -f name=$DOCKER_CONTAINER)" ]; then
    echo "No running $DOCKER_CONTAINER container to stop"
  else
    echo "Stopping running $DOCKER_CONTAINER container"
    docker stop $DOCKER_CONTAINER
  fi

  echo "Deleting $DOCKER_CONTAINER container"
  docker rm $DOCKER_CONTAINER
fi

if [ "$(docker network ls -qf name=$DOCKER_NETWORK)" ]; then
  docker network rm $DOCKER_NETWORK
fi

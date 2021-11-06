#!/bin/bash

DOCKER_CONTAINER=training-my-first-docker-container

# IGNORE THIS BLOCK OF CODE (START)
if [ "$(docker ps -aq -f status=running -f name=$DOCKER_CONTAINER)" ]; then
  echo "$DOCKER_CONTAINER container is already running"
  exit
fi

if [ ! "$(docker ps -aq -f name=$DOCKER_CONTAINER)" ]; then
  echo "No existing $DOCKER_CONTAINER to start"
  exit
fi
# IGNORE THIS BLOCK OF CODE (END)

# IMPORTANT! START THE CONTAINER!
echo "Running $DOCKER_CONTAINER container"
docker start $DOCKER_CONTAINER

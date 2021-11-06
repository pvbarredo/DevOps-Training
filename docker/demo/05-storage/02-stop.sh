#!/bin/bash

DOCKER_CONTAINER=training-testdb

# IGNORE THIS BLOCK OF CODE (START)
if [ "$(docker ps -aq -f status=exited -f name=$DOCKER_CONTAINER)" ]; then
  echo "No running $DOCKER_CONTAINER container to stop"
  exit
fi
# IGNORE THIS BLOCK OF CODE (END)

# IMPORTANT! STOP THE CONTAINER!
echo "Stopping running $DOCKER_CONTAINER container"
docker stop $DOCKER_CONTAINER

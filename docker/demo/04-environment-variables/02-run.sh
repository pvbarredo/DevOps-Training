#!/bin/bash

DOCKER_IMAGE=training/environment-variables
DOCKER_CONTAINER=training-environment-variables

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

# IMPORTANT! RUN THE IMAGE AS CONTAINER!
echo "Running the image $DOCKER_IMAGE as $DOCKER_CONTAINER container"
docker run --rm --name $DOCKER_CONTAINER -e FOO=BAR $DOCKER_IMAGE

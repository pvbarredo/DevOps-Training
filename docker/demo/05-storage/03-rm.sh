#!/bin/bash

DOCKER_CONTAINER=training-testdb

# IGNORE THIS BLOCK OF CODE (START)
if [ ! "$(docker ps -aq -f name=$DOCKER_CONTAINER)" ]; then
  echo "No existing $DOCKER_CONTAINER container to remove"
  exit
fi

if [[ "$1" == "-f" || "$1" == '--force' ]]; then
  ./02-stop.sh
fi
# IGNORE THIS BLOCK OF CODE (END)

# IMPORTANT! DELETE THE CONTAINER!
echo "Deleting $DOCKER_CONTAINER container"
docker rm $DOCKER_CONTAINER

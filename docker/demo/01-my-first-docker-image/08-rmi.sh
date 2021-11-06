#!/bin/bash

DOCKER_IMAGE=training/my-first-docker-image

# IGNORE THIS BLOCK OF CODE (START)
if [[ ! "$(docker images -q $DOCKER_IMAGE)" ]]; then
  echo "No existing $DOCKER_IMAGE image to remove"
  exit
fi

if [[ "$1" == "-f" || "$1" == '--force' ]]; then
  ./05-rm.sh --force
fi
# IGNORE THIS BLOCK OF CODE (END)

# IMPORTANT! DELETE THE IMAGE!
echo "Deleting $DOCKER_IMAGE image"
docker rmi $DOCKER_IMAGE

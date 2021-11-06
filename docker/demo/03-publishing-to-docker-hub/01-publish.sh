#!/bin/bash

DOCKER_IMAGE=training/my-first-docker-image
DOCKER_HUB_IMAGE=junoonb/training
DOCKER_IMAGE_TAR_FILE=training-my-first-docker-image.tar

# IGNORE THIS BLOCK OF CODE (START)
if [[ ! "$(docker images -q $DOCKER_IMAGE)" ]]; then
  if [ -f $DOCKER_IMAGE_TAR_FILE ]; then
    echo "Loading $DOCKER_IMAGE_TAR_FILE to Docker"
    docker load -i $DOCKER_IMAGE_TAR_FILE
  fi
fi
# IGNORE THIS BLOCK OF CODE (END)

echo "Tagging $DOCKER_IMAGE with $DOCKER_HUB_IMAGE"
docker tag $DOCKER_IMAGE $DOCKER_HUB_IMAGE

echo "Login to Docker Hub"
docker login

echo "Publishing to Docker Hub"
docker push $DOCKER_HUB_IMAGE

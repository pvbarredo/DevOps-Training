#!/bin/bash

DOCKER_IMAGE_TAR_FILE=training-my-first-docker-image.tar

docker-compose down --rmi all --remove-orphans -v

if [ -f $DOCKER_IMAGE_TAR_FILE ]; then
  rm $DOCKER_IMAGE_TAR_FILE
fi

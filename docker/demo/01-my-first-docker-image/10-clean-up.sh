#!/bin/bash

DOCKER_IMAGE_TAR_FILE=training-my-first-docker-image.tar

./08-rmi.sh --force

if [ -f $DOCKER_IMAGE_TAR_FILE ]; then
  rm $DOCKER_IMAGE_TAR_FILE
fi

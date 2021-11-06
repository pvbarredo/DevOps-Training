#!/bin/bash

DOCKER_IMAGE_TAR_FILE=training-my-first-docker-image.tar

# IMPORTANT! LOAD IMAGE!
echo "Loading $DOCKER_IMAGE_TAR_FILE to Docker"

# Option 1
docker load -i $DOCKER_IMAGE_TAR_FILE

# Option 2
# docker load < $DOCKER_IMAGE_TAR_FILE

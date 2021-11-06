#!/bin/bash

DOCKER_IMAGE=training/my-first-docker-image
DOCKER_IMAGE_TAR_FILE=training-my-first-docker-image.tar

# IGNORE THIS BLOCK OF CODE (START)
if [ ! "$(docker images -q $DOCKER_IMAGE 2> /dev/null)" ]; then
  echo "No existing $DOCKER_IMAGE image to save"
  exit
fi
# IGNORE THIS BLOCK OF CODE (END)

# IMPORTANT! SAVE IMAGE IT!
echo "Saving $DOCKER_IMAGE image to $DOCKER_IMAGE_TAR_FILE"

# Option 1
docker save -o $DOCKER_IMAGE_TAR_FILE $DOCKER_IMAGE

# Option 2
#docker save $DOCKER_IMAGE > $DOCKER_IMAGE_TAR_FILE

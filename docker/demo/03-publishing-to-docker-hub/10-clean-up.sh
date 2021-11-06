#!/bin/bash

DOCKER_IMAGE=training/my-first-docker-image
DOCKER_HUB_IMAGE=junoonb/training

if [[ "$(docker images -q $DOCKER_IMAGE)" ]]; then
  docker rmi $DOCKER_IMAGE
fi

if [[ "$(docker images -q $DOCKER_HUB_IMAGE)" ]]; then
  docker rmi $DOCKER_HUB_IMAGE
fi


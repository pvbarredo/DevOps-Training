#!/bin/bash

DOCKER_IMAGE=training/environment-variables

# IMPORTANT! BUILD THE IMAGE!
echo "Building the $DOCKER_IMAGE image"
docker build -t $DOCKER_IMAGE .


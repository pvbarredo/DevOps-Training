#!/bin/bash

DOCKER_NETWORK=training-network

# IGNORE THIS BLOCK OF CODE (START)
if [[ "$1" == "-f" || "$1" == '--force' ]]; then
  if [ "$(docker network ls -qf name=$DOCKER_NETWORK)" ]; then
    docker network rm $DOCKER_NETWORK
  fi
fi
# IGNORE THIS BLOCK OF CODE (END)

# IMPORTANT! CREATE A NEW NETWORK
docker network create -d bridge --subnet="172.50.1.0/24" $DOCKER_NETWORK

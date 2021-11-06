#!/bin/bash

# IMPORTANT! RUN THE IMAGE AS CONTAINER!
if [[ "$1" == "-f" || "$1" == '--force' ]]; then
  docker-compose -f docker-compose-scale.yml up -d --force-recreate
else
  docker-compose -f docker-compose-scale.yml up -d
fi

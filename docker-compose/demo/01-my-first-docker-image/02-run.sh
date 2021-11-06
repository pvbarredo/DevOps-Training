#!/bin/bash

# IMPORTANT! RUN THE IMAGE AS CONTAINER!
if [[ "$1" == "-f" || "$1" == '--force' ]]; then
  docker-compose up -d --force-recreate
else
  docker-compose up -d
fi

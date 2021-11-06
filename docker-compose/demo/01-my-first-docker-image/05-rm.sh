#!/bin/bash

# IMPORTANT! DELETE THE CONTAINER!
if [[ "$1" == "-f" || "$1" == '--force' ]]; then
  docker-compose rm -s
else
  docker-compose rm
fi

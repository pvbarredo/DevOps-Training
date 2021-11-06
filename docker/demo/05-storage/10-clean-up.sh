#!/bin/bash

./03-rm.sh --force

if [ "$(docker volume ls | grep data)" ]; then
  docker volume rm data
fi

if [ -d "${PWD}/data" ]; then
  sudo rm -rf "${PWD}/data"
fi

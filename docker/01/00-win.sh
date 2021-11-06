#!/bin/bash

./01-mvn-package.sh

./02-docker-build.sh

./03-create-network.sh

./04-create-volume.sh

./05-create-db.sh

sleep 10

./06-populate-db.sh

./07-run-app.sh

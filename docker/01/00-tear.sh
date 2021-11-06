#!/bin/bash

./01-mvn-clean.sh

./08-stop-and-remove-app.sh

./09-stop-and-remove-db.sh

./10-remove-volume.sh

./11-remove-network.sh

./12-remove-image.sh

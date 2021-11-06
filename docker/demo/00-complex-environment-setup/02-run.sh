#!/bin/bash

docker run --name "training-complex-environment-setup" -dp 5432:5432 -e POSTGRES_PASSWORD=password training/complex-environment-setup

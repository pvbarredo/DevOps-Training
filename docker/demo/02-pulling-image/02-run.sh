#!/bin/bash

docker run -d --name training-testdb -p 5432:5432 -e POSTGRES_PASSWORD=password postgres:13.4

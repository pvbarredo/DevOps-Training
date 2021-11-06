#!/bin/bash

cat db/create-table.sql | docker exec -i training-exercise-db psql -h localhost -U heya -W

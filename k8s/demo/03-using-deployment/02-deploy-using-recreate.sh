#!/bin/bash

kubectl apply -f deployment/using-recreate/app-v1.yml

sleep 60

kubectl apply -f deployment/using-recreate/app-v2.yml

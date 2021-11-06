#!/bin/bash

kubectl apply -f deployment/using-rolling-update/app-v1.yml

sleep 60

kubectl apply -f deployment/using-rolling-update/app-v2.yml

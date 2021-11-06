#!/bin/bash

kubectl apply -f deployment/using-canary/app-v1.yml

sleep 60

kubectl apply -f deployment/using-canary/app-v2.yml

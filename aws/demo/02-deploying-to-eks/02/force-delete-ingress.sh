#!/bin/bash

kubectl patch ingress 2048-ingress -n game-2048 -p '{"metadata":{"finalizers":[]}}' --type=merge

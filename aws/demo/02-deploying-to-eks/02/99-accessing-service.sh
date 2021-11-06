#!/bin/bash

#kubectl run -it --rm curl --image=radial/busyboxplus:curl -i --tty

kubectl run -it --rm curl --image=curlimages/curl -- sh

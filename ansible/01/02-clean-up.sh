#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook clean-up.yml

./vagrant-destroy.sh

if [ -f app.tar.gz ]; then
  rm app.tar.gz
fi

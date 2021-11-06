#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

echo "Running 'free -m' using command module"

#ansible all -m command -a "free -m" -i ../hosts
ansible all -m ansible.builtin.command -a "free -m" -i ../hosts

echo "Running 'df -h' using command module"

#ansible all -m command -a "df -h" -i ../hosts
ansible all -m ansible.builtin.command -a "df -h"  -i ../hosts

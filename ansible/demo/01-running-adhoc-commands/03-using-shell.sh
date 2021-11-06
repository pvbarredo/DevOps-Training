#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

echo "Running 'env' using shell module"
#ansible all -m shell -a "env" -i ../hosts
ansible all -m ansible.builtin.shell -a "env" -i ../hosts

echo "Running 'df -h | grep sda' using command module"
#ansible all -m shell -a "df -h | grep sda" -i ../hosts
ansible all -m ansible.builtin.shell -a "df -h | grep sda" -i ../hosts

#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

#ansible all -m ping -i ../hosts

ansible all -m ansible.builtin.ping -i ../hosts

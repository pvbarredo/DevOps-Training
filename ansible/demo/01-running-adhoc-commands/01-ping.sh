#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

#ansible all -m ping -i ../hosts

export ANSIBLE_HOST_KEY_CHECKING=false && ansible all -m ansible.builtin.ping -i ../hosts

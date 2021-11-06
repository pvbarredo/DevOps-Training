#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook include.yml -i ../hosts -v

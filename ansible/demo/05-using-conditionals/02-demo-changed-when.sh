#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook demo-changed-when.yml

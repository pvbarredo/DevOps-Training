#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook demo-ignore-errors.yml

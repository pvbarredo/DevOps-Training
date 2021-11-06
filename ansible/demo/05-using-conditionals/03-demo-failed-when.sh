#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook demo-failed-when.yml

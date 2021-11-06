#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook import-with-dynamic-var.yml -i ../hosts -v

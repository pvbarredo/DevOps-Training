#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook playbook.yml --limit dev -i ../hosts

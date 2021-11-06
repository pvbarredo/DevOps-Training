#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook create_playground_db.yml -i ../hosts

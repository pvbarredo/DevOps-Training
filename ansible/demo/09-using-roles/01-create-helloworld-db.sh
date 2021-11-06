#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook create_helloworld_db.yml -i ../hosts

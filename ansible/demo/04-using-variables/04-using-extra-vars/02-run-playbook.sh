#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook playbook.yml -i ../hosts -v --extra-vars "@default-vars.yml"

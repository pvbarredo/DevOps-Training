#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook jenkins.yml -i hosts

#ansible-playbook jenkins-plugins.yml -i hosts


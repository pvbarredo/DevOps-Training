#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

# ansible dev -m apt -a "name=openjdk-11-jdk state=present" -i ../hosts
ansible dev -m ansible.builtin.apt -a "name=openjdk-11-jdk state=present" -i ../hosts

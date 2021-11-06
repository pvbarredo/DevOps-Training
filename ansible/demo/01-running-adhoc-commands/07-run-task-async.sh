#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

# ansible db -B 3600 -P 10 -m apt -a "name=openjdk-11-jdk state=present" --become -i ../hosts
ansible dev -B 3600 -P 0 -m ansible.builtin.apt -a "name=openjdk-11-jdk state=present" --become -i ../hosts

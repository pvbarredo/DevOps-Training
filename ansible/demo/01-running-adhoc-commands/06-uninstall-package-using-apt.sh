#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

# ansible dev -m apt -a "name=openjdk-11-jdk state=absent" --become
ansible dev -m ansible.builtin.apt -a "name=openjdk-11-jdk state=absent" --become -i ../hosts

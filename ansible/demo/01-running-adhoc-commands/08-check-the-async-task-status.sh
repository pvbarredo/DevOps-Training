#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

#ansible db -m async_status -a "jid=624148399111.7458" -i ../hosts --become
ansible dev -m ansible.builtin.async_status -a "jid=624148399111.7458" -i ../hosts --become

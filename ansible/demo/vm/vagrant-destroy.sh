#!/bin/bash

# Clean the known_hosts file
ssh-keygen -f ~/.ssh/known_hosts -R "192.168.200.10"
ssh-keygen -f ~/.ssh/known_hosts -R "192.168.200.11"
ssh-keygen -f ~/.ssh/known_hosts -R "192.168.200.101"
ssh-keygen -f ~/.ssh/known_hosts -R "192.168.200.102"
ssh-keygen -f ~/.ssh/known_hosts -R "192.168.200.103"
ssh-keygen -f ~/.ssh/known_hosts -R "192.168.200.200"

vagrant destroy -fg

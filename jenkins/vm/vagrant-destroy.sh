#!/bin/bash

# Clean the known_hosts file
ssh-keygen -f ~/.ssh/known_hosts -R "192.168.200.100"
ssh-keygen -f ~/.ssh/known_hosts -R "192.168.200.200"
ssh-keygen -f ~/.ssh/known_hosts -R "192.168.200.201"

vagrant destroy -fg

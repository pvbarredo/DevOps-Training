#!/bin/bash

# Clean the known_hosts file
ssh-keygen -f ~/.ssh/known_hosts -R "192.168.210.100"
ssh-keygen -f ~/.ssh/known_hosts -R "192.168.210.200"

vagrant destroy -fg

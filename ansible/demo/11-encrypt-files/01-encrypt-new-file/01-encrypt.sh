#!/bin/bash

if [ -f "vars.yml" ]; then
  rm  vars.yml
fi

ansible-vault create --vault-password-file passphrase vars.yml

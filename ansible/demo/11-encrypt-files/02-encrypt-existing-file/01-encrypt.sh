#!/bin/bash

# cp vars_raw.yml vars.yml

ansible-vault encrypt --vault-password-file passphrase vars.yml

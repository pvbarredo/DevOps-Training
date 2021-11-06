#!/bin/bash

# when ask for vault pass, use `password`
ansible-vault encrypt_string --ask-vault-pass 'S3cret' --name 'encrypted_secret'

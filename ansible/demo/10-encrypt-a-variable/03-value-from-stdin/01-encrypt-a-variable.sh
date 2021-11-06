#!/bin/bash

ansible-vault encrypt_string --vault-password-file passphrase --stdin-name 'encrypted_secret'

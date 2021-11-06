#!/bin/bash

ansible-vault encrypt_string --vault-password-file passphrase 'S3cret' --name 'encrypted_secret'

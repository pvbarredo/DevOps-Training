#/bin/bash

# cp encrypted_vars.yml vars.yml

ansible-vault decrypt --vault-password-file passphrase vars.yml

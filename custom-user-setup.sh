#! /bin/bash

# add custom user
adduser $1

# set password
usermod -p $(echo $2 | openssl passwd -1 -stdin) nodebotanist

# give custom user sudoer privileges
echo "$1    ALL=(ALL) ALL" >> /etc/sudoers
#! /bin/bash

# add nodebotanist user
adduser nodebotanist

# set password
usermod -p $(echo ***** | openssl passwd -1 -stdin) nodebotanist

# give nodebotanist sudoer privileges
echo "nodebotanist    ALL=(ALL) ALL" >> /etc/sudoers


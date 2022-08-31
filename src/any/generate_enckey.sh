#!/bin/bash

openssl genrsa -out $HOME/.ssh/service_privkey.pem 4096
openssl rsa -in $HOME/.ssh/service_privkey.pem -out $HOME/.ssh/service_pubkey.pem -outform PEM -pubout


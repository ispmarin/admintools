#!/bin/bash

network=loveandrockets
password=$(openssl pkeyutl -decrypt -inkey "$HOME"/.ssh/service_privkey.pem -in "$HOME"/.env)

iwctl --passphrase "${password}" station wlan0 connect ${network}

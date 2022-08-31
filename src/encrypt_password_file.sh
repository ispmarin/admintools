#!/bin/bash

openssl pkeyutl -encrypt -inkey $HOME/.ssh/service_pubkey.pem -pubin -in .env_clear -out .env

#!/bin/bash

# Script to run vagrant commands to test ansible deployments

cd "$1" || exit
if [[ -f "Vagrantfile" ]]
  then
    source "$HOME"/.local/lib/venv/ansible/bin/activate
    vagrant up --provision --no-destroy-on-error
 else
   echo "Please provide a directory that contains a Vagrantfile"
fi


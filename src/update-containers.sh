#!/bin/bash

SERVICE_PATH=/data/services/containers/docker-compose

if [ $# -eq 1 ]
    then
      (cd ${SERVICE_PATH}/"$1" && docker-compose pull && docker-compose up -d)
    else
      echo "Please provide container base folder"
fi
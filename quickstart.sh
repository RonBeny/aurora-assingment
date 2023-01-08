#!/bin/bash

#create environment variables
if [ ! -f ./jenkins.env ]; then
  cp .env.template jenkins.env
fi

#run docker compose detached
docker-compose up -d 



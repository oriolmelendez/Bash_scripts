#!/bin/bash

STR=$(ps aux | grep docker-compose)
SUB='docker-compose up'
if [[ "$STR" == *"$SUB"* ]]; then
  echo "Currently containers are running"
  sleep 3
  exit 0
fi

cd ~/home/folder_compose_file
docker-compose up

if [ $? -eq 1 ]
then
	echo "Docker are running."
	echo "Starting to down dockers."
	docker stop $(docker ps -q)
	docker-compose up
	exit 0
fi

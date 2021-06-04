#!/bin/bash
DIR="/home/ubuntu/mountpoint/voting-app"
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  cd mountpoint/Voting-app
  docker-compose up -d
  ##echo "Installing config files in ${DIR}..."##
else
  ###  Control will jump here if $DIR does NOT exists ###
  cd mountpoint
  git clone https://github.com/JitulKumarL/Voting-app.git
  cd Voting-app
  docker-compose up -d
  ##echo "Error: ${DIR} not found. Can not continue."
  exit 1
fi

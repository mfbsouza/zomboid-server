#!/bin/bash

# make sure the server-data folder exists
mkdir -p data

# build the installer
docker build -t zomboid-installer -f install.Dockerfile .

# run the installer
docker run \
	-it \
	--rm \
	--name zomboid-installer \
	-v $(pwd)/data:/server-data \
	zomboid-installer

# update server-data permissions
sudo chown -R 1000:1000 data

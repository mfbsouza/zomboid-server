#!/bin/bash

# make sure the server-data and config folders exists
mkdir -p data
mkdir -p config

# build the installer
docker build -t mfbsouza/zomboid-installer -f install.Dockerfile .

# run the installer
docker run \
	-it \
	--rm \
	--name pz-installer \
	--mount type=bind,source="$(pwd)/data",target=/server-data \
	-i mfbsouza/zomboid-installer

# update server-data permissions
sudo chown -R 1000:1000 data

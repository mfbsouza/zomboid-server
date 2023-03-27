#!/bin/bash

# run the server
docker run \
	-dit \
	--restart=unless-stopped \
	--name pz-server \
	--mount type=bind,source="$(pwd)/data",target=/home/pzuser/server-data \
	--mount type=bind,source="$(pwd)/config",target=/home/pzuser/Zomboid \
	-p 8766-8767:8766-8767/udp \
	-p 16261-16271:16261-16271/udp \
	-p 27015:27015 \
	-i mfbsouza/zomboid-server

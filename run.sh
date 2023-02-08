#!/bin/bash

# build the server runner
docker build -t zomboid-server .

# run the server
docker run \
	-it \
	--rm \
	--name zomboid-server \
	-v $(pwd)/data:/server-data \
	-p 8766:8766/udp \
	-p 8767:8767/udp \
	-p 16261:16261/udp \
	-p 16262-16282:16262-16282/udp \
	-p 27015:27015 \
	zomboid-server

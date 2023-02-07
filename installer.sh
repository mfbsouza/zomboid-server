#!/bin/bash

# build the installer
docker build -t zomboid-installer -f install.Dockerfile .

# run the installer

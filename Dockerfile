#FROM amazoncorretto:8-alpine
FROM eclipse-temurin:11

LABEL maintainer="Matheus Souza <mfbsouza.it@gmail.com>"

# install bash in alpine
##USER root
##RUN apk update
##RUN apk upgrade
##RUN apk add bash

# create pz user
RUN useradd -ms /bin/bash pzuser

# start the server
USER pzuser
WORKDIR /server-data
CMD bash start-server.sh -servername PROJECT_GDS

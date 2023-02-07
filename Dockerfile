FROM amazoncorretto:8-alpine

LABEL maintainer="Matheus Souza <mfbsouza.it@gmail.com>"

USER pzuser
WORKDIR /server-data
CMD bash start-server.sh -servername PROJECT_GDS

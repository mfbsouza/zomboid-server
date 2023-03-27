FROM eclipse-temurin:11

LABEL maintainer="Matheus Souza <mfbsouza.it@gmail.com>"

# create pz user
RUN useradd -ms /bin/bash pzuser

# start the server
USER pzuser
WORKDIR /home/pzuser/server-data
CMD bash start-server.sh

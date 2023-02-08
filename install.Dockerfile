FROM steamcmd/steamcmd:alpine

LABEL maintainer="Matheus Souza <mfbsouza.it@gmail.com>"

LABEL desc="This image installs/updates the Project Zomboid \
Game Server located at ./data folder. So the folder should \
be proper mounted before running this image"

USER root
WORKDIR /tmp
COPY ./install.steamcmd .
CMD steamcmd +runscript /tmp/install.steamcmd

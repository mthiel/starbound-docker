############################################################
# Dockerfile to build a Starbound server
############################################################

FROM ubuntu:14.04

# Install Dependacy
RUN apt-get update
RUN apt-get -y install lib32gcc1 lib32z1 lib32ncurses5 lib32bz2-1.0 wget supervisor lib32stdc++6

# SteamCMD startup and update files
COPY ./server/server_start /server/

# Installing the starbound server
RUN mkdir /server/starbound

EXPOSE 21025
VOLUME      ["/server/starbound"]
ENTRYPOINT  ["/server/server_start"]

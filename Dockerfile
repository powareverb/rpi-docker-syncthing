FROM resin/rpi-raspbian:jessie
MAINTAINER Gavin Jones <gavin.jones.nz@gmail.com>

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget

#http://www.htpcguides.com/install-syncthing-raspberry-pi-bittorrent-sync-alternative/
RUN wget -O - https://syncthing.net/release-key.txt | sudo apt-key add -
RUN echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee -a /etc/apt/sources.list.d/syncthing-release.list

RUN apt-get update
RUN apt-get install syncthing -y

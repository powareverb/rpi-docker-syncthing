FROM resin/rpi-raspbian:jessie
MAINTAINER Gavin Jones <gavin.jones.nz@gmail.com>
#docker run -t -i resin/rpi-raspbian:jessie /bin/bash

RUN apt-get update && apt-get install -y wget

#http://www.htpcguides.com/install-syncthing-raspberry-pi-bittorrent-sync-alternative/
RUN wget -O - https://syncthing.net/release-key.txt | sudo apt-key add -
RUN echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee -a /etc/apt/sources.list.d/syncthing-release.list

RUN apt-get update && apt-get install syncthing -y

#Default ports, these can be changed via config...
EXPOSE 8384
EXPOSE 22000

CMD ["/usr/bin/syncthing"]

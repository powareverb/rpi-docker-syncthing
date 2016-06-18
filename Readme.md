Description
===========

A simple build of SyncThing for rPi.

Uses the APT repo provided at http://apt.syncthing.net/, so just need to pull and rebuild to get latest version.

Current build on Docker Hub is:
v0.13.7, Linux (ARM) 
"Copper Cockroach"
https://hub.docker.com/r/powareverb/rpi-docker-syncthing/

Docker file here:
https://github.com/powareverb/rpi-docker-syncthing


Build
=====

~~~
 git clone https://github.com/powareverb/rpi-docker-syncthing.git
 cd rpi-docker-syncthing
 docker build -t powareverb/rpi-docker-syncthing .
~~~

Usage
=====

~~~
 docker run -d \
    --name syncthing \
    -p 8080:8080 -p 22000:22000 -p 21025:21025/udp \
    -v /data/configs/syncthing:/root/.config/syncthing \
    powareverb/rpi-docker-syncthing
~~~
	
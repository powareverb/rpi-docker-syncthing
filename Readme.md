
*Usage*

docker run -d \
    --name syncthing \
    -p 8080:8080 -p 22000:22000 -p 21025:21025/udp \
    -v /data/configs/syncthing:/root/.config/syncthing \
    powareverb/rpi-docker-syncthing
	
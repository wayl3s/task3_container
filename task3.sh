# /bin/bash
xhost +local:docker
sudo docker build --tag qbittorrent .
sudo docker pull linuxserver/jackett
sudo docker compose up -d
echo "jackett's local ip:"
sudo docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' jackett
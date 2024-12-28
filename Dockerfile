FROM ubuntu:latest

RUN apt-get update && apt-get install -qqy x11-apps
RUN apt-get install -y qbittorrent

CMD qbittorrent --save-path=/qbittorrent/

FROM ubuntu:20.04

RUN apt-get update && apt-get install -y git python3

WORKDIR /root

RUN git clone https://github.com/effigies/BitTornado

WORKDIR /root/BitTornado

CMD [ "python3", "btshowmetainfo.py", "/a.torrent"]

# self-test during build
COPY ./ubuntu-20.04.2-live-server-amd64.iso.torrent .
ENV f='ubuntu-20.04.2-live-server-amd64.iso.torrent'
ENV h='126f82fb33119d2acf93a16cfba6eb1c5787a59f'
RUN python3 btshowmetainfo.py "$f" | grep "$h"

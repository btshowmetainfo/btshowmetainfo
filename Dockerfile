FROM ubuntu:20.04

RUN apt-get update && apt-get install -y git python3

WORKDIR /root

RUN git clone https://github.com/effigies/BitTornado

WORKDIR /root/BitTornado

CMD [ "python3", "btshowmetainfo.py", "/a.torrent"]
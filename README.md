![](https://travis-ci.com/btshowmetainfo/btshowmetainfo.svg?branch=master)
[![](https://img.shields.io/docker/cloud/build/btshowmetainfo/btshowmetainfo)](https://hub.docker.com/r/btshowmetainfo/btshowmetainfo)

Example

```bash
docker build . -t btshowmetainfo

docker run --rm -v "$(pwd)/ubuntu-18.04.4-desktop-amd64.iso.torrent:/a.torrent" btshowmetainfo


```
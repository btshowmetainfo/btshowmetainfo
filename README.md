![](https://travis-ci.com/btshowmetainfo/btshowmetainfo.svg?branch=master)
[![](https://img.shields.io/docker/cloud/build/btshowmetainfo/btshowmetainfo)](https://hub.docker.com/r/btshowmetainfo/btshowmetainfo)

# Using the container
For example:


```bash
wget https://releases.ubuntu.com/20.04/ubuntu-20.04.2-live-server-amd64.iso.torrent

docker run \
    --rm \
    --volume "$(pwd)/ubuntu-20.04.2-live-server-amd64.iso.torrent:/a.torrent" \
    btshowmetainfo/btshowmetainfo
```

gives

```
btshowmetainfo 20130326 - decode BitTorrent metainfo files

metainfo file.: a.torrent
info hash.....: 126f82fb33119d2acf93a16cfba6eb1c5787a59f
file name.....: ubuntu-20.04.2-live-server-amd64.iso
file size.....: 1215168512 (4635 * 262144 + 131072)
announce url..: https://torrent.ubuntu.com/announce
announce-list.: https://torrent.ubuntu.com/announce|https://ipv6.torrent.ubuntu.com/announce
comment.......: Ubuntu CD releases.ubuntu.com
```


# With the wrapper script

```bash
curl --silent https://releases.ubuntu.com/20.04/ubuntu-20.04.2-live-server-amd64.iso.torrent | ./btshowmetainfo -

./btshowmetainfo ubuntu-18.04.4-desktop-amd64.iso.torrent
```

# Build and run
Clone the repo, then

```bash
./build-and-test
```

# Local Build & Run Example

```bash
docker build . -t btshowmetainfo

docker run --rm -v "$(pwd)/ubuntu-18.04.4-desktop-amd64.iso.torrent:/a.torrent" btshowmetainfo
```
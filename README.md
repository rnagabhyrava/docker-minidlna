## MiniDLNA

[MiniDLNA](https://sourceforge.net/projects/minidlna/) (renamed as ReadyMedia) is a simple media server software, with the aim of being fully compliant with DLNA/UPnP-AV clients.

## MiniDLNA Docker Images

This image is based on Alpine Linux. Supports amd64, arm64, armv6 and armv7. Docker should automatically pull the image based on your CPU architecture.

## Usage

Example:

### Docker Compose

    version: '3.8'
    services:
      minidlna:
        image: rnagabhyrava/minidlna
        container_name: minidlna
        volumes:
          - /your/videos/folder/:/media/Videos
          - /your/Music/folder/:/media/Music
          - /your/Pictures/folder/:/media/Pictures
        network_mode: "host"
        restart: unless-stopped

### Docker

    docker run -d \
      --name minidlna \
      -v /your/videos/folder/:/media/Videos \
      -v /your/Music/folder/:/media/Music \
      -v /your/Pictures/folder/:/media/Pictures \
      --net=host \
      --restart unless-stopped \
      rnagabhyrava/minidlna


If you want to change config file, make your own config file using this [man page](https://manpages.ubuntu.com/manpages/bionic/man5/minidlna.conf.5.html).

Then, bind a volume as: /your/config/folder/minidlna.conf:/etc/minidlna.conf

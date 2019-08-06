FROM ubuntu:18.04

ADD config /config
ADD start.sh /start.sh

RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt bionic main restricted universe multiverse" > /etc/apt/sources.list && \
    echo "deb mirror://mirrors.ubuntu.com/mirrors.txt bionic-updates main restricted universe multiverse" >> /etc/apt/sources.list && \
    echo "deb mirror://mirrors.ubuntu.com/mirrors.txt bionic-security main restricted universe multiverse" >> /etc/apt/sources.list && \
    DEBIAN_FRONTEND=noninteractive apt-get update -q && \
    apt-get install -qy software-properties-common && \
    add-apt-repository ppa:deluge-team/stable && \
    apt-get update -q && \
    apt-get install -qy --no-install-recommends deluged deluge-web && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x /start.sh

VOLUME ["/data"]
# Torrent port
EXPOSE 53160
EXPOSE 53160/udp
# WebUI
EXPOSE 8112
# Daemon
EXPOSE 58846

CMD ["/start.sh"]

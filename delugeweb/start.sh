#! /bin/sh

set -e
echo "checking .state directory"
if ! [ -d /data/.state ];then
  echo "creating .state directory"
  mkdir /data/.state;
fi

rm -f /data/deluged.pid

#if ! [ -L /config/state ];then
#  rmdir /config/state
#fi

if ! [ -d /config/state ];then
  ln -s /data/.state/ /config/state
fi

deluged -d -c /config -L info -l /data/deluged.log &
deluge-web -c /config -L info -l /data/deluged.log &
wait
cd ${0%/*}
. ./config.ini
./bin/"$exec".bin stop
/system/bin/sh /data/v2/*/ZJL -c
/system/bin/sh /data/v2/*/ZJL -h
sed -i "4s/file=.*/file=香港WTT2/" config.ini
cd ${0%/*}
chmod -R 777 .
. ./config.ini
./bin/"$exec".bin start

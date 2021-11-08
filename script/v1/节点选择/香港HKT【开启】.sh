sed -i "4s/file=.*/file=香港HKT/" config.ini
cd ${0%/*}
chmod -R 777 .
. ./config.ini
./bin/"$exec".bin start

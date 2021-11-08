sed -i "4s/file=.*/file=美國-费利蒙/" config.ini
cd ${0%/*}
chmod -R 777 .
. ./config.ini
./bin/"$exec".bin start

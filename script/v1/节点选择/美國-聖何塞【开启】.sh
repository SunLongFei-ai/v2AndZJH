sed -i "4s/file=.*/file=美國-聖何塞/" config.ini
cd ${0%/*}
chmod -R 777 .
. ./config.ini
./bin/"$exec".bin start


cd /data/v2/
project_name="${0##*/}"
name=`echo $project_name`
filename="${name%.*}"
sed -i "/file=/cfile=$filename" config.ini
echo -e "
- 节点成功更换"

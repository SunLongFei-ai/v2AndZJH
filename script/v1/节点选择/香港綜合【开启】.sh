cd /data/v2/
project_name="${0##*/}"
name=`echo $project_name`
filename="${name%.*}"
sed -i "/file=/cfile=$filename" config.ini
echo -e "
- 节点成功更换"

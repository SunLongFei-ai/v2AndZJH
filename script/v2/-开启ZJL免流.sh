cd ${0%/*}
. ./config.ini
./bin/"$exec".bin stop
cd /data/v2/
sed -i "/选择模式=/c选择模式=bd" /data/v2/配置.ini
echo -e "\n- 模式成功更换"

#王动动态=wk
#百度直连=bd
#百度移动=bdyd
#uc动态=uc
/system/bin/sh /data/v2/*/ZJL -o
/system/bin/sh /data/v2/*/ZJL -h
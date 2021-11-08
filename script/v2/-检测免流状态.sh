cd ${0%/*}
. ./config.ini
./bin/"$exec".bin check
DIRPath=$(readlink -f "$(dirname "$0")")
cd ${DIRPath}
time_out="3"
# 判断模块文件夹是否存在MLBox
    if [ -s ${DIRPath}/bin/MLBox ]; then
        alias MLBox="${DIRPath}/bin/MLBox"
        is_MLBox_exist="true"
    fi
    #MLBox -ntp '39.106.194.18' -timeout=5
[[ `MLBox -ntp '119.29.186.53' -timeout=2 | grep "时间戳"` ]] && UDP="👍 已启用" || UDP="👎 已停用"
echo " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "-UDP状态：     ${UDP}"
    
echo " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
zjlPath="${0%/*}/*/ZJL"

if [[ `echo "${zjlPath}" | grep ' '` ]]; then
    isNormal="containsSpaces"
elif [ -f ${zjlPath} ]; then
    [ -x ${zjlPath} ] || isNormal="permissionDenied"
else
    isNormal="notFound"
fi

if [[ ! ${isNormal} ]]; then
    ${zjlPath} -d
else
    echo "\n      __________________________\n\n"\
          "              ZJL 2.0\n"\
          "     __________________________\n"
          
    if [[ "containsSpaces" == ${isNormal} ]]; then
        echo "           脚本路径存在空格\n\n"\
              "          请重命名后再使用"
    elif [[ "notFound" == ${isNormal} ]]; then
        echo "           找不到ZJL核心文件\n\n"\
              "          请复制回模块文件夹\n\n"\
              "          请修改权限为0777"
    else
        echo "           ZJL核心权限有问题\n\n"\
              "          请修改权限为0777"
    fi
    echo "     __________________________\n"
fi

        
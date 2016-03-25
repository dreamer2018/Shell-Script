if [ $# -lt 1 ];then
    echo "Usage: iconv.sh path"
    exit
fi
line=$( ls -l $1 | sed '1d' | wc -l )
num=-1;
for i in $( seq 1 $line )
do
    string=$( ls -l $1 | sed '1d' | awk '{ print $9 }' | sed -n "${i}p" )
    if [ $string != 'iconv.sh' ] && [ -f "${1}/${string}" ];then
        (( num++ ))
        array[$num]=$string
    fi
done
if ! [ -d "${1}/utf-8" ];then
    mkdir "${1}/utf-8"
fi
for i in $( seq 0 $num )
do
    new="${1}/utf-8/${array[$i]}"
    file="${1}/${array[$i]}"
    iconv -t utf-8 -f gb2312 $file > $new
done

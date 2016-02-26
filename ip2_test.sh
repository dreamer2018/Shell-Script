#!/bin/bash
# File Name: ip2_test.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: 2016年01月25日 星期一 20时18分17秒
for siteip  in $(seq 1 254)
do
    site="192.168.1.${siteip}"
    ping -c 1 -W 1 $site &> /dev/null
    if [ "$?" == "0" ]; then 
        echo "UP"
    else
        echo "DOWN"
    fi
done

#!/bin/bash
# File Name: sh17.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 14 Dec 2015 05:18:09 PM CST
network="192.168.20"
for sitenu in $( seq 1 254 )
do
    ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
    if [ "$result" == 0 ];then
        echo "Service ${network}.${sitenu} is Up."
    #else
    #   echo "Service ${network}.${sitenu} is DOWN."
    fi
done

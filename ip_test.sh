#!/bin/bash
# File Name: ip_test.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: 2016年01月25日 星期一 19时54分28秒
for ip_ in $(seq 1 2)
do
    full_ip="192.168.20.${ip_}"
    echo $full_ip
    ping -c 1 -W 1 $full_ip &> /dev/null 
    if [ $? == 0 ]; then
        echo "UP"
    else
        echo "DOWN"
    fi
done


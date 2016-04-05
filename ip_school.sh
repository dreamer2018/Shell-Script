#!/bin/bash
# File Name: ip_test.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: 2016年04月5日 星期一 10时31分28秒

for F_ip in $(seq 1 254 )
do
    for S_ip in $( seq 1 254 ) 
    do    
        full_ip="222.24.${F_ip}.${S_ip}"
        #echo $full_ip
        ping -c 1 -W 1 $full_ip &> /dev/null 
        if [ $? == 0 ]; then
            echo "${full_ip} UP"
            echo "${full_ip}" >> ip.txt
        else
            echo "${full_ip} DOWN"
        fi
    done
done


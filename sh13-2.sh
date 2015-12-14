#!/bin/bash
# File Name: sh13-2.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 14 Dec 2015 03:20:12 PM CST
until [ "$yn" == "YES" -o "$yn" == "yes" ]
do
    read -p "Please input:" yn
done
echo "end"

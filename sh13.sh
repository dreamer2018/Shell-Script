#!/bin/bash
# File Name: sh13.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 14 Dec 2015 03:09:10 PM CST
while [ "$yn" != "yes" -a "$yn" != "YES" ]
do
    read -p "Please Input yes/YES :" yn
done
echo "Ok,you input answer"

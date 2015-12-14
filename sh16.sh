#!/bin/bash
# File Name: sh16.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 14 Dec 2015 04:44:09 PM CST
users=$( cut -d ':' -f1 /etc/passwd )
for username in users
do
    id $username
    finger $username
done

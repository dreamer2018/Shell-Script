#!/bin/bash
# File Name: adduser.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: 2015年12月20日 星期日 10时46分03秒

if [ ! -f acc.txt ];then
    echo "acc.txt not exist"
    exit 0
fi
usernames=( cat acc.txt )
for username in usernames
do
    useradd $username
    echo "$username" | passwd --stdin $username
    chage -d 0 $username
done

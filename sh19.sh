#!/bin/bash
# File Name: sh19.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 14 Dec 2015 06:41:53 PM CST
max=100
s=0
for (( i=1; i<=$max; i=i+1 ))
do
    s=$(($s+$i))
done
echo -e "the result is $s"

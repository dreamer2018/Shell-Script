#!/bin/bash
# File Name: sh14.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 14 Dec 2015 03:31:16 PM CST
s=0
i=0
while [ "$i" != "100" ]
do
    i=$(( $i + 1 ))
    s=$(( $s + $i ))
done
echo "1+2+3+...+100 = $s"

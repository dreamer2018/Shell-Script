#!/bin/bash
# File Name: sh04.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:输入两数，然后求和
# Created Time: Sun 06 Dec 2015 05:04:41 PM CST

echo -e "Please input TWO number:"
read -p "first number:" fnum
read -p "second number:" snum
#declare -i total=$fnum*$snum
total=$(($fnum*$snum))
echo -e "The result is $total\n"


#!/bin/bash
# File Name: sh07.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 07 Dec 2015 07:42:59 PM CST
echo -e "filename is $0 "
echo -e "the total number is $#" 
[ $# -lt 2 ] && echo "the parameter too less" && exit 0
echo "your whole parameter is $@ "
echo "the first parameter is $1"
echo "the second parameter is $2"
shift 2
echo "the first parameter is $1"
echo "the second parameter is $2"

echo -e "the total number is $#" 
echo "your whole parameter is $@ "

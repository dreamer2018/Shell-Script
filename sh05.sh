#!/bin/bash
# File Name: sh05.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 07 Dec 2015 05:57:06 PM CST

echo -e "Please Input FileName,We Will Check This File IS/NOT Exist!\n"
read -p "Please Input FileName：" filename

test -z $filename && echo "you MUST Input filename!" && exit 0
test -e $filename || echo "FileName is not exist"

test -f $filename && echo "filename is regular file"
test -d $filename && echo "filename is directory"

test -r $filename && echo "read"
test -w $filename && echo "write"
test -x $filename && echo "executable"





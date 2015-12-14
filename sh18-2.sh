#!/bin/bash
# File Name: sh18-2.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 14 Dec 2015 06:04:34 PM CST
if [ "$1" == "" -o ! -d "$1" ];then
    echo "error"
    exit 1
fi
filelist=$(ls "$1")
for filename in $filelist
do
    perm=""
    test -r "$1/$filename" && perm="$perm r"
    test -w "$1/$filename" && perm="$perm w"
    test -x "$1/$filename" && perm="$perm x"
    echo -e "$1/$filename\t\t$perm"
done

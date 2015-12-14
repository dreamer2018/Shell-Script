#!/bin/bash
# File Name: sh18.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 14 Dec 2015 05:37:47 PM CST
read -p "Please Input Dir :" dir
if [ "$dir" == "" -o ! -d "$dir" ];then
    echo "The $dir is not in your system."
    exit 1
fi

filelist=$(ls $dir)
for filename in $filelist
do
    perm=""
    test -r "$dir/$filename" && perm="$perm readable"
    test -w "$dir/$filename" && perm="$perm writeable"
    test -x "$dir/$filename" && perm="$perm executeable"
    echo -e "The file $dir/$filename \t\t\t Permission is $perm"
done


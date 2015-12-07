#!/bin/bash
# File Name: sh06.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 07 Dec 2015 07:27:52 PM CST

read -p "Please Input Y/n:" yn
[ "$yn" == "Y" -o "$yn" == "y" ] && echo "OK continue !" && exit 0
[ "$yn" == "N" -o "$yn" == "n" ] && echo "NO interrupt !" && exit 0
echo -e "I don't know what your choice is!\n"


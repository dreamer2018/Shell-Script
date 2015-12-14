#!/bin/bash
# File Name: sh12-2.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 14 Dec 2015 01:35:08 PM CST
read -p "Please Input:" input
case $input in 
    "1")
        echo "1"
        ;;
    "2")
        echo "2"
        ;;
    "3")
        echo "3"
        ;;
    *)
        echo "other"
        ;;
esac

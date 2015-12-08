#!/bin/bash
# File Name: sh09-2.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Tue 08 Dec 2015 06:26:50 PM CST

case $1 in 
    "hello")
        echo "hello, how are you ?"
        ;;
    "")
        echo "You MUST input ex > {$0 someword}"
        ;;
    *)
        echo "Usage $0 hello"
        ;;
esac

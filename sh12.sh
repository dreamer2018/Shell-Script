#!/bin/bash
# File Name: sh12.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Tue 08 Dec 2015 06:33:03 PM CST

echo "this program print your choice!"
# read -p "Input you choice:" $input
# case $input in
case $1 in
    "one")
        echo "your choice is ONE"
        ;;
    "two")
        echo "your choice is TWO"
        ;;
    "three")
        echo "your choice is THREE"
        ;;
    *)
        echo "Usage $0 one | two | three"
        ;;
esac

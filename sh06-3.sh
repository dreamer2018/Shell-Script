#!/bin/bash
# File Name: sh06-2
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Tue 08 Dec 2015 01:36:06 PM CST
read -p "Please Input Y/n:" yn
if [ "$yn" == "Y" ] || [ "$yn" == "y" ] ; then
    echo "OK,Continue"
elif [ "$yn" == "N" ] || [ "$yn" == "n" ] ; then
    echo "On,Interrupt !"
else
    echo "I don't know what your choice is"
fi

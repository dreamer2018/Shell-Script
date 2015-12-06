#!/bin/bash
# File Name: sh03.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Sun 06 Dec 2015 04:48:09 PM CST
echo -e "I will use "touch" command to create 3 files "
read -p "Please input your filename:" filename
filename=${filename:-"filename"}
date1=$(date --date='1 days ago' +%Y%m%d)
date2=$(date --date='2 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}


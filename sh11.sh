#!/bin/bash
# File Name: sh11.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Tue 08 Dec 2015 02:51:41 PM CST

echo "This program will try to calculate:"
echo "how many days before your demobilization data ..."
read -p "please inout data as > (YYYYMMDD ex> 20151212 ):" date_2
date_d=$( echo $date2 | grep '[0-9] \{8\}' )
if [ "$date_d" == "" ] ; then
    echo "You input the wrong date format..."
    exit 1
fi

declare -i date_dem=`date --date="$date2" + %s`
declare -i date_now=`date + %s`
declare -i date_total_s=$( ($date_dem-$date_now) )
declare -i date_d=$( ( $date_total_s/60/60/24 ) )

if [ $date_total_s -lt 0 ]; then
    echo "You had been demobilization before:" $( ( -1*$date_d ) ) "ago"
else
    declare -i date_h = $( ( $( ( $date_total_s*60*60*24 ) )/60/60 ) )
    echo "you will demobilization after $date_d days and $date_h hours"
fi


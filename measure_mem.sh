#!/bin/sh
export  LD_LIBRARY_PATH=./
echo -e "DATE\t \t\tVSZ\tRSS"
while true 
do 
    DATE=`date "+%Y.%m.%d.%H.%M.%S "`
    VSZ=`./ps aux | grep graph_201909 | grep -v grep | awk -F ' ' '{print $5}'`
    RSS=`./ps aux | grep graph_201909 | grep -v grep | awk -F ' ' '{print $6}'`
    echo -e "$DATE\t$VSZ\t$RSS"
    sleep 10
done


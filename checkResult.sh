#!/bin/bash

while [ 1 ];
do
    count=`curl -s "$1" | grep -c "$2"`

    if [ $count -gt 2 ]
    then
       echo "$1 updated!"
       echo "$count"
       echo $count
       while [ 1 ];
       do 
       		tput bel
       done
       exit 0
    fi
    echo "result is not out yet"
    sleep 300
done
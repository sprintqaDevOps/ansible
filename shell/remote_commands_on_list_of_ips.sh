#!/bin/bash

counter=1

for server in $(cat list_of_ips.txt)
do 
    echo "$counter, installing on server ${server}"
    scp installation.sh root@${server}:/tmp
    ssh root@${server} "sh /tmp/installation.sh"
    let counter++
done 

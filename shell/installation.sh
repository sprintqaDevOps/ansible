#!/bin/bash

wget --version 1>/dev/null 2>&1

if [[ $? -eq 0]]
then 
    echo "wget exists on this server"
else 
    sudo yum install wget -y 
fi 



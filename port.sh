#!/bin/bash


#echo Your container args are: "$@"
# Check if a port number is provided
if [[ -z "$@" ]]; then
  echo "Usage:  <ServerIp>  <port>"
  exit 1
fi
 

if ! nc "${1}" "${2}" -w 5; then
    echo "PORT $2 CLOSED"
else
    echo "PORT $2 OPEN"
fi


#Check Mount 
mkdir /shared
mount -t cifs //192.168.1.38/media/shared /shared -o user=shared,password=calvoch80
#cd /shared
#!/bin/bash


regex_ip='(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])(\.(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])){3}'
#netstat -an | awk -v regex="$regex_ip" 'match($5, regex){print $1 " " $5 " " $6}' #| grep -E "$regex_ip"
netstat -an | awk -v regex="$regex_ip" '$5 ~ regex{print $1 " " $5 " " $6}' #| grep -E "$regex_ip"





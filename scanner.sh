#!/bin/bash


regex_ip='(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])(\.(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])){3}'



{ netstat -an -p tcp; netstat -an -p udp; } | awk -v regex="$regex_ip" '$5 ~ regex{print $1, $5, $6}' | sed -E 's/.([^.]*)$/ \1/'








# nslookup -type=PTR 209.58.188.104

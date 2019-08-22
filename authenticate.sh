#!/bin/bash
: '
UoH automatic network login script
Author: Nitish Jadia
Date: 2019-08-19
Version: 1.0
'
userName="18mcmt13"
passwd=""

if ! ping -4 -c 1 8.8.8.8 > /dev/null 2>&1; then
    curl -sS 'http://192.168.56.2:8090/login.xml' -H 'Origin: http://192.168.56.2:8090' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,hi;q=0.8,en-IN;q=0.7' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: */*' -H 'Referer: http://192.168.56.2:8090/httpclient.html' -H 'Connection: keep-alive' -H 'DNT: 1' --data "mode=191&username=$userName&password=$passwd&a=$(date +%s%3N)&producttype=0" --compressed --insecure > /dev/null 2>&1
fi

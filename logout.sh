#!/bin/bash

userName=""

curl 'http://192.168.56.2:8090/logout.xml' -H 'Origin: http://192.168.56.2:8090' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,hi;q=0.8,en-IN;q=0.7' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: */*' -H 'Referer: http://192.168.56.2:8090/httpclient.html' -H 'Connection: keep-alive' -H 'DNT: 1' --data "mode=193&username=$userName&a=$(date +%s%3N)&producttype=0" --compressed --insecure > /dev/null 2>&1

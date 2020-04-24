#!/bin/bash
echo $(date "+%Y-%m-%d %H:%M:%S") >> /fff/log/time_begin.log

chmod -R 777 /fff/html
cd /fff/html/swoole
git checkout .
git pull origin master
chmod -R 777 /fff/html

echo $(date "+%Y-%m-%d %H:%M:%S") >> /fff/log/time_end.log

php /fff/html/swoole/http_server.php

echo $(date "+%Y-%m-%d %H:%M:%S") >> /fff/log/time_php.log

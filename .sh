#!/bin/bash
echo $(date "+%Y%m%d%H%M%S") >> /fff/log/time_begin.log

chmod -R 777 /fff/html
cd /fff/html/swoole
git pull origin master

echo $(date "+%Y%m%d%H%M%S") >> /fff/log/time_end.log

#!/bin/bash

DATE=$(date +%F_%H-%M-%S)
mkdir -p ~/logs_test
touch ~/logs_test/log_$DATE.txt
echo "Log created at $DATE" >> ~/logs_test/log_$DATE.txt
find ~/logs_test -type f -name "log_*.txt" -mtime +1 -exec rm {} \;


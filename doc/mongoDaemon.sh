#!/user/bin/env bash
#mongodb daemon shell.
#use crontab to run everyday

mongoProcess=$(ps -ef | grep 8887 | grep -v grep | wc -l);
if ["$mongoProcess" -lt "1"]; then
    echo "mongodb failed, restart now";
    sh mongoStart.sh;
fi
    



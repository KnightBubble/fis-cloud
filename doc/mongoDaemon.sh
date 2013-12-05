#!/user/bin/env bash
 
mongoProcess=$(ps -ef | grep 8887 | grep -v grep | wc -l);
if [ "$mongoProcess" -lt "1" ]; then
    date=$(date);
    echo "[ERROR] mongodb failed, restart now, time is $date" >> ./mongolog/mongoDaemon.log;
    sh mongoStart.sh;#
fi
    



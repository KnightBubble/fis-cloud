#!/user/bin/env bash
#fis-cloud server daemon shell, user crontab to run every 2 hours

cloudProcess=$(ps -ef | grep 8889 | grep -v grep | wc -l);
log='./serverlog/serverDaemon.log';
if [ "$cloudProcess" -lt "1" ]; then
    date=$(date);
    echo "[ERROR] fis-cloud server failed, restart now. time is $date" >> $log; 
    workerPIDs=$(ps -ef | grep fis-cloud-kernel/lib/worker.js | grep -v grep | cut -c 7-15);
    for id in $workerPIDs; do
        kill -9 $id 2&>1 > /dev/null 
            if [ "$?" = "0" ]; then
                echo "kill correct, process id is $id" >> $log;
            else
                echo "kill failed, process id is $id" >> $log; 
            fi  
    done
    sh cloudStart.sh;
fi

#!/user/bin/env bash
#fis-cloud server daemon shell, user crontab to run every 2 or 3 hours

cloudProcess=$(ps -ef | grep 8889 | grep -v grep | wc -l);

if [ "$cloudProcess" -lt "1" ]; then
    echo "fis-cloud server failed, restart now";
    workerPIDs=$(ps -ef | grep fis-cloud-kernel/lib/worker.js | grep -v grep | cut -c 7-15);
    for id in $workerPIDs; do
        kill -9 $id 2&>1 > /dev/null 
            if [ "$?" = "0" ]; then
                echo "kill correct, process id is $id";
            else
                echo "kill failed, process id is $id"; 
            fi  
    done
    sh cloudStart.sh;
fi

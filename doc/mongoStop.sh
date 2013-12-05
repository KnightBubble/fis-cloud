#!/usr/bin/env bash  
#停止mongodb数据库

mongoPIDs=$(ps -ef -u fis-cloud| grep 8887 | grep -v grep | cut -c 7-15);
echo $mongoPIDs;

for id in $mongoPIDs;do
    kill -2 $id 2&>1 > /dev/null
        if [ "$?" = "0" ]; then
             echo 'stop  mongodb successfully, process id is ';
             echo $id;
         else
            echo 'stop $id mongodb failed, process id is ';
            echo $id;
        fi
done



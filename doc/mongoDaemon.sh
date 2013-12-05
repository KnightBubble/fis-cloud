#!/user/bin/env bash
#mongodb守护脚本，检测数据库关闭后，开启
#使用 crontab，定时执行

mongoProcess=$(ps -ef | grep 8887 | grep -v grep | wc -l);
if ["$mongoProcess" -lt "1"]; then
    echo "mongodb failed, restart now";
    sh mongoStart.sh;
fi
    



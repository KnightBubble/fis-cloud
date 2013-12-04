#kill mongodb
#kill fis-cloud
#rm -rf mongo.lock
#start mongo


#!/usr/bin/env bash



nohup 	../bin/fis-cloud start --port 8889 >server.log 2>&1 &
nohup mongod --port 8887 --dbpath=/home/fis-cloud/data/db >mongo.log 2>&1 &

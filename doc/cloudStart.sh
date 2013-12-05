#!/user/bin/env bash
#start fis-cloud server
nohup ./node_modules/fis-cloud/bin/fis-cloud start --port 8889 >./serverlog/server.log 2>&1 &

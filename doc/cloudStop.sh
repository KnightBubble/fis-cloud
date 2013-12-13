#!/user/bin/env bash
#stop fis-cloud server
nohup ./node_modules/fis-cloud/bin/fis-cloud stop >./serverlog/server.log 2>&1 &

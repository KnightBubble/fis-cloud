#!/user/bin/env bash
#start mongodb
nohup mongod --fork --logpath mongolog/mongo.log --port 8887 --dbpath=/home/fis-cloud/data/db

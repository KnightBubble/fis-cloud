#!/user/bin/env bash
nohup mongod --fork --logpath mongolog/mongo.log --port 8887 --dbpath=/home/fis-cloud/data/db

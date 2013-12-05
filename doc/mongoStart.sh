#启动mongodb数据库
nohup mongod --fork --logpath mongolog/mongo.log --port 8887 --dbpath=/home/fis-cloud/data/db

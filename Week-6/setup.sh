mkdir a0
mkdir a1
mkdir a2

mkdir b0
mkdir b1
mkdir b2

mkdir c0
mkdir c1
mkdir c2

mkdir d0
mkdir d1
mkdir d2

mkdir cfg0
mkdir cfg1
mkdir cfg2

sudo killall mongod

/home/mahasagar/work/platform/mongodb/bin/mongod --configsvr --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/cfg0 --port 26050 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.cfg0 --logappend --fork


/home/mahasagar/work/platform/mongodb/bin/mongod --configsvr --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/cfg1 --port 26051 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.cfg1 --logappend --fork


/home/mahasagar/work/platform/mongodb/bin/mongod --configsvr --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/cfg2 --port 26052 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.cfg2 --logappend --fork


#shard server start
#A server replicas
/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet a  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/a0 --port 27000 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.a0 --logappend --oplogSize 50 --smallfiles --fork

/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet a  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/a1 --port 27001 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.a1 --logappend --oplogSize 50 --smallfiles --fork

/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet a  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/a2 --port 27002 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.a2 --logappend --oplogSize 50 --smallfiles --fork


#b Server Replicas
/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet b  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/b0 --port 27100 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.b0 --logappend --oplogSize 50 --smallfiles --fork

/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet b  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/b1 --port 27101 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.b1 --logappend --oplogSize 50 --smallfiles --fork

/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet b  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/b2 --port 27102 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.b2 --logappend --oplogSize 50 --smallfiles --fork

#C replica
/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet c  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/c0 --port 27200 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.c0 --logappend --oplogSize 50 --smallfiles --fork

/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet c  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/c1 --port 27201 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.c1 --logappend --oplogSize 50 --smallfiles --fork

/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet c  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/c2 --port 27202 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.c2 --logappend --oplogSize 50 --smallfiles --fork

#D replica
/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet d  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/d0 --port 27300 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.d0 --logappend --oplogSize 50 --smallfiles --fork

/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet d  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/d1 --port 27301 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.d1 --logappend --oplogSize 50 --smallfiles --fork

/home/mahasagar/work/platform/mongodb/bin/mongod --shardsvr --replSet d  --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/d2 --port 27302 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.d2 --logappend --oplogSize 50 --smallfiles --fork


echo "done mongod"

echo "start mongos"
sleep 30
echo "after sleep"
# Mongos processes
sudo /home/mahasagar/work/platform/mongodb/bin/mongos --configdb  localhost.local:26050,localhost.local:26051,localhost.local:26052 --fork --logappend  --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.mongos0 

sudo /home/mahasagar/work/platform/mongodb/bin/mongos --configdb  localhost.local:26050,localhost.local:26051,localhost.local:26052 --fork --logappend --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.mongos1 --port 26061

sudo /home/mahasagar/work/platform/mongodb/bin/mongos --configdb  localhost.local:26050,localhost.local:26051,localhost.local:26052  --logappend --fork --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.mongos2 --port 26062

sudo /home/mahasagar/work/platform/mongodb/bin/mongos --configdb  localhost.local:26050,localhost.local:26051,localhost.local:26052 --logappend --fork --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.mongos3 --port 26063



echo 
ps -A | grep mongo

echo
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.cfg0
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.cfg1
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.cfg2

echo
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.a0
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.a1
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.a2

tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.b0
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.b1
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.b2

tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.c0
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.c1
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.c2

tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.d0
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.d1
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.d2

echo
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.mongos0      
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.mongos1
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.mongos2
tail -n 1 /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-6/log.mongos3










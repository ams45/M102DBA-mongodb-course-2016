sudo killall mongod

/home/mahasagar/work/platform/mongodb/bin/mongod --port 27001 --replSet abc --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-4/1 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-4/log.1 --logappend --oplogSize 50 --smallfiles --fork

 /home/mahasagar/work/platform/mongodb/bin/mongod --port 27002 --replSet abc --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-4/2 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-4/log.2 --logappend --oplogSize 50 --smallfiles --fork

 /home/mahasagar/work/platform/mongodb/bin/mongod --port 27003 --replSet abc --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-4/3 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-4/log.3 --logappend --oplogSize 50 --smallfiles --fork

mongo --port 27001


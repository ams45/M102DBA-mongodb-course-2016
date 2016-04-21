#Notes 

- start replica set 

/home/mahasagar/work/platform/mongodb/bin/mongod --port 27001 --replSet abc --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-5/1 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-5/log.1 --logappend --oplogSize 50 --smallfiles --fork


/home/mahasagar/work/platform/mongodb/bin/mongod --port 27002 --replSet abc --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-5/2 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-5/log.2 --logappend --oplogSize 50 --smallfiles --fork

/home/mahasagar/work/platform/mongodb/bin/mongod --port 27003 --replSet abc --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-5/3 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-5/log.3 --logappend --oplogSize 50 --smallfiles --fork


cfg = {
	"_id" : "abc",
	"members" : [
		{
			"_id" : 0,
			"host" : "mahasagar-medibox:27001"
		},
		{
			"_id" : 1,
			"host" : "mahasagar-medibox:27002"
		},
		{
			"_id" : 2,
			"host" : "mahasagar-medibox:27003"
		}
	]
}

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
> rs.initiate(cfg);

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

Kill Mongod process
-  ps -Aef | grep mongod
-  sudo kill -9 29747 
-  ps -Aef | grep mongod


# Start Replica Set
 - for now, just using single computer.
 - we need diff ports
 - and diff dbpath
 - give same replica set name
   - if other server ask to join.then it should have same replica set name.
 
 - Command to start 3 replica sets
  mongod --port 27001
         --replSet abc
	 --dbpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-4/1
	 --logpath /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-4/log.1
	 --logappend
	 --oplogSize 50
	 --smallfiles
	 --fork

 about to fork child process, waiting until server is ready for connections.
 forked process: 4324
 all output going to: /home/mahasagar/work/mongo_course/M102DBA-mongodb-course-2016/Week-4/log.1
 child process started successfully, parent exiting

 - --replSet : give replica set name
 - --dbpath : give path , where db files will be stored
 - --logpath : where log will stored
 - --logappend : its says, if mongod starts again,it will override log.
 - --oplogSize : 50mb..
 - --smallfiles : to indicate that db files should be small.
 - --fork : to run in background.



# Initiating a Replica
- specify the config
- initial data : member are started empty..they then replicate data.
   - [replSetInitiate] option to define to empty data.
- 
- 

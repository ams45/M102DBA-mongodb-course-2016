# few Other commands
 - > db.runCommand({isMaster : 1})
 {
 	"ismaster" : true,
		"maxBsonObjectSize" : 16777216,
			"maxMessageSizeBytes" : 48000000,
				"maxWriteBatchSize" : 1000,
					"localTime" : ISODate("2016-03-24T01:54:15.531Z"),
						"maxWireVersion" : 4,
							"minWireVersion" : 0,
								"ok" : 1
								}
								> 


						

 - db.isMaster();
 > db.isMaster
 function () { return this.runCommand("isMaster"); }
    - this show the implementation of isMaster command
 - db.help()
 Quiz: db.isMaster()

 What does the db.isMaster() command do?

 Determine your level of mastery of the MongoDB shell.
 Determine if this shard is the Primary shard.
 Determine if this member of the replica set is the Primary.[Right Answer]
 Determine if the database has Master-Slave replication.

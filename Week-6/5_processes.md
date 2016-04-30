#Processes
 - in each shard there wud be multiple mongod processes.
 - this are replica sets
 - there are config server
   - its small mongod process whcih stores meta data
 - Mongos : client will connect with mongos
   - so mongos divert the request of client to shards
   - client dont have to worry about it.
 - when query comes from client
  - mongos start up
  - it will get the relevent meta data from config server and  it will do operation with mongod
  - if its comes in mulitple bases, it will merge data at end and show back.
 - mongos dont any file there, its like load balancer
 - get meta data and route it.
 - in single lapy..config server are one. but in product it shud be 3.
 - it will have same meta data and sync among each.
 - atleast one of the config server will be up..
 - config server are Very imp , as it store where the data is store in shard.
#Quiz: Sharding Processes

db.foo.find( 
  { name : { $gt : "Joe", $lt : "John" } } ) 
is efficient if the collection is sharded on { name : 1 }

*True
False

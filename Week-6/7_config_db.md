#Config Db
 - before replica set..we need to set config db
 - where the chunk are..!how many shard there are..!
 - ps -A | grep mongo
 - to check all mongo process
 - now mongo will connect to mongos
   - we are running default port as mongos
 - use config
 - mongos process know where the config server is..!
 - show collections
   actionlog
   chunks
   lockpings
   locks
   mongos
   settings
   shards
   tags
   version

#Quiz: The Config Database

Which are true?

To check via the mongo shell what's in the config database of a MongoDB cluster, you must connect it directly to one of the config servers.
*Three config servers is typical in a MongoDB cluster with 1,000 total machines.
*All the config servers have exactly the same data.

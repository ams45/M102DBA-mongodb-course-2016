#Reconfig applied

 - db.isMaster()
 - rs.status()
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#reconfig without shutdown any server

 - abc:PRIMARY> var cfg = rs.conf()
 - abc:PRIMARY> cfg.members[2].slaveDelay  = 120;
 - abc:PRIMARY> rs.reconfig(cfg)
 {
 	"ok" : 0,
	"errmsg" : "priority must be 0 when slaveDelay is used",
	"code" : 103
}
 - abc:PRIMARY> cfg.members[2].priority = 0;
   0
 - abc:PRIMARY> rs.reconfig(cfg)
    { "ok" : 1 }
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#reconfig : one server should never be primary
  
   - cfg.members[2].slaveDelay  = 8 * 3600;
   - cfg.members[2].priority = 0;
   - cfg.members[2].hidden = true
   -  rs.reconfig(cfg)
   -  rs.status()
   - now shutdown 3 one.kill the process
   -  rs.status(): shows its down
   -  cfg = rs.conf()
   -  db.isMaster() : it will not show 3rd one as its hidden is true.
   - cfg = rs.conf()
   
   - so now.. if u will insert throw primary, it will not reflect in 3rd server as its delay by 8 hours.
   - 
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 

#connect from same shell : 
   - on secondary 
      mongo --port 27003

   - abc:SECONDARY> db.foo.count()
   0
   - var server2 = new Mongo('localhost:27002')
   - var server2_test = server2.getDB('test')
   - 
   - server2_test.getMongo().setSlaveOk(true)
   - server2_test.foo.count()
   - 
   - db.isMaster().me
   
   - (new Mongo('localhost:27001')).getDB('test').foo.count();


   so :
    - (new Mongo('localhost:27001')).getDB('test').foo.count();
    - server2_test.foo.count()

    - db.foo.count()
   
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# to check oplog
  -  server2.getDB("local").oplog.rs.find().sort({natural : -1}).limit(5)

  - 

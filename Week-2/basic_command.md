 # few basic commands
 - > db.serverStatus
 function ( options ){
     var cmd = { serverStatus : 1 };
         if ( options ) {
	    Object.extend( cmd, options );
         }
         var res = this._adminCommand( cmd );
         // Only prune if we have a metrics tree with commands.
	 if (res.metrics && res.metrics.commands) {
		res.metrics.commands = getActiveCommands(res.metrics.commands);
	}
	   return res;
        }


 - db.serverStatus();
   * show all the details of server.
 
Quiz: db.serverStatus()

When running the command db.serverStatus() in the shell, what does the “ok” field represent?

*That the command was sent and received properly by the mongod
That the master db process is ok
That the shell is running properly
That the daemon to which you are connected is ok
That the daemon has master status
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# db.currentOp();
> db.currentOp()
{
	"inprog" : [
		{
			"desc" : "conn1",
			"threadId" : "140701205509888",
			"connectionId" : 1,
			"client" : "127.0.0.1:34367",
			"active" : true,
			"opid" : 1012,
			"secs_running" : 0,
			"microsecs_running" : NumberLong(40),
			"op" : "command",
			"ns" : "admin.$cmd",
			"query" : {
				"currentOp" : 1
			},
			"numYields" : 0,
			"locks" : {
				
			},
			"waitingForLock" : false,
			"lockStats" : {
				
			}
		}
	],
	"ok" : 1
}
 -   you can kill operation
  - db.killOp
#Quiz: db.currentOp() & db.killOp()

If you’re looking for problems with database performance, what is a good place to look, when you run db.currentOp()?

“ok”: false
“secs_running”: (look for long times)*
“secs_running”: (look for short times)
"opid", because you always want to killOp() everything to clean things up.
"opid": (something that is not sequential with the rest)

//##############################################
#collection.stats()
 -db.sample.stats()
   - show all the statatic of collection
#collection.drop()
  - to drop the collection
#db.sample.remove({}) 
  - will remove data..but collection still exists.
  - db.system.namespaces.find()


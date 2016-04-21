#Hidden Option
 - hidden : <bool>
 - we can hide the server from access.
 - may be server is smaller.
 - hidden true : client can not see this server
 - so, we can hide member from config.

#SlaveDelay
 -slaveDelay : <Seconds>
 - it can used to risk management and reliable server
 - it means, server will have data back from delay time given
.
 - suppose, some one delete one row, using this it can be recover,instend of recovery of whole data.
 - so, suppose.. there is one server, and its slaveDelay : 8*3600
   - hidden : true is automatic in slaveDelay.
   - if any one delete some data.and we want to recover that data..will be hav that data in this server, as it slave delay is 8 hours back.

#Quiz: Hidden Option & Slave Delay

Which scenarios does it make sense to use slave delay? Check all that apply.

*Prevent against a new client application release bug
*Getting a view of the DB between backups
*During development when using experimental queries
For production level live-data queries
As the primary backup

#Notes 
- Reconfiguration a replica set.
 - we can reconfig replica set using replSetReconfig
 - so..if one secondary is down..!
   - till then other server are at Ahead.
   - and after sometime..secondary is up..
   - it will go in recovery mode.
   - then..sync with others and..be at same place.

#Quiz: Reconfiguring a Replica Set

Which of the following statements are true about reconfiguring a replica set? Check all that apply.

The reconfiguration will always trigger an election
The reconfiguration requires the mongod servers to be restarted
*Servers can be either removed from the replica set, or added
*If a member of the replica set is not available, the replica set can still be reconfigured 

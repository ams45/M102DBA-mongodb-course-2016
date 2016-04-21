#Arbiters
- we can give more options in config 
- arbiterOnly : true - means member hav no data.
- so..in case..
   there can be - primary,secondary and arbiter(with no Data)
- in election - arbiter is also consider.
- suppose, there are 2 servers and one arbiter server
  - so for voting each one has 1 vote.
  - arbiter can be simple mongod process running on one simple server.
  - light weight process.
  - so..if one of the both is down..arbiter will vote to running one.
  - by arbiterOnly : true , client driver will understand, to not try to get data from arbiter server.


Quiz: Arbiters

When might you want to use an arbiter? Check all that apply.

*To make an odd number of votes in the replica set
*To spread the replica set over more datacenters
To help in disaster recovery
*To protect against network splits
To query aggregation batch jobs

#Voting Option
 - *Dont use Votes.
 - so, suppose there are 2 server
 - and both are having 1 vote..its hard to get primary if anyone is down.
 - so, if primary one is given 2 votes in config.
   - and its down, so its hard to assign other one to primary as there are one one vote out of three.
 - wht is recommened , to give 1 vote to primary and 0 to secondary.

#As of MongoDB 3.0, a replica set member can only have 0 or 1 vote.

In this video, Dwight mentions that changing votes for members of a replica set would not be a best practice, but there is one exception.

Mongodb allows seven voting members in a replica set, so if your replica set has more than seven members, you will need to assign any further members a vote of zero.

Having more than seven members in a replica set is fairly unusual, so this issue would not come up in most vanilla MongoDB deployments.


#Quiz: Voting Options

Generally, is it typical for servers to have different vote counts?

Yes
No

#Automatic Failover

- if any primary/secondary..is failed..it will make other secondary..as primary.
- seocndary keep track which is primary..and its up..
-  
- Automatic recovery : if primary is down,so secondary understands if primary is down.
- it will not work on network partition.
- its decided, who will be primary next.
- if secondary is assign as primary.client app will send request to that primary and other secondary will replicate with that primary.
- client side, drivers are replica set aware..it will check, who is primary..and req according.
- read preferences, replica set gives us.means from where we should read..

#Quiz: Automatic Failover

Imagine a replica set with 5 servers. What is the minimum number of servers (assume each server has 1 vote) to form a consensus?

2
*3
4
5


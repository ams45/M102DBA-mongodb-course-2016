#Write Concern Principles
 - write is truly committed upon app @ a majority of set.
 - we can get acknowlegment

 - db.getLastError({w:'majority',wtimeout : 8000})
Quiz: Write Concern Principles

Imagine you're using a 5-server replica set and you have critical inserts which you do not want the potential for a rollback to happen. You also have to consider that secondaries may be taken down from to time for maintenance laving you with a potential 4-server replica set. Which write concern is best suited for these critical inserts?

w=0
w=1
*w=majority
w=2
w=3  

#Sharding
 - shards : "Partions"
 - one can be in of the shards
 - we can have multiple repica in one shard
 - working :
    - every doc contains shard key
    - "shard Key" in [Key low , Key high] formati for S1
    - so doc in same collection having same key will be placed in same shard
    - so , we can declare shard key as any field.
    - meta data : 
        - name-low    name-high   shard
	   A		D	    S4
	   D            F           S2
	   F            J           S9

    - A - D is range , where doc name field in between A-D will be in S4 Shard
    - meta data tell us location of doc in our cluster
    - so.. db.user.find({name : "Dinchak"}); 
         - will go to S2 for finding the data..


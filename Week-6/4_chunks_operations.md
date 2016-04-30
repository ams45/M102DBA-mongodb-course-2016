#Chunks And Operations
 - the key range in shard is noted as "Chunk"
 - its about 100MB each
 - two operation : split and migrate
 - so, if chunk size increase from 100MB, it splits
 - suppose, A -D was shard key of chunk
    - its size is increasing
    - it splits into 2
        Keys  shard
    -  A - C   S3
       C - D   S3
 - we just chane in mate data
 - its light weight operations

 - migrate will balance in shard to shard
 - if S1 is having less data and S3 is filling more.
   -  then it will migrate the data from S3 to S1
 - at end it will update the Meta data
 - not expensive
 - liveliness property : it will be stil available wl migration
 - balancer : is component which decide on wwhen to migrate.

#Quiz: Chunks & Operations

 It is possible to configure the size of each chunk which affects when they will be split. A large chunk size means chunks will be split less often as each chunk needs to grow larger before it is split, and a small chunk size means they will be split more often, for instance.

 Which of the following statements are true regarding a very small chunk size configuration as compared to a large chunk size configuration? Check all that apply.


 Fewer migrations would have to take place
* More migrations would have to take place
* Each shard would be very balanced in terms of how much data they contain
 Each server would be very unbalanced in terms of how much data they contain
 There is no difference in terms of migration and shard server balance

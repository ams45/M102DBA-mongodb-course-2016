# Mmapv1 : data files and Documents

 - in /data/db
   - mongod.lock : lock other mongod process not to come in
   - local.ns : Metadata of Local DB
   - local.0 : first data file of Local DB
   - so, when doc is insert, file size increases
   - u can check using : db.foo.stats()
   - in mmapv1 : it stores the address of doc
   - and indexes refer to address of docs
   - so..if change in any doc..and if there is less space to store in disk, then its shifted to new location.
   - if doc is change to new location : it has to change in index also, as index point to address of doc.

#doc store limit
  - mongodb allocated doc size as Power of 2
  - if doc size is 32..and its updated more..then it will be 64..similarly 128..and so on..
  - now..after it come to 2MB, it will update doc size by 2MB..
  - Last limit to doc size is 16MB.after this u need to change your schema.

  - if doc is shifted..its space is assign as HOLE..so that any other doc can use the space.


#Quiz: MMAPv1: Documents and Data Files

Relative to no padding, Power of Two Sized Allocations in MMAPv1 provides which of the following benefits? Check all that apply.


*Documents that grow at a constant rate will move less often as time goes on.
*Record spaces are likely to get re-used.
*Documents will not have to move as soon as they grow in size.
Document movement need no longer result in updates to your indexes.

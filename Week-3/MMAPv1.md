#MAPPv1
 - maps the data file in Virtual Memory 
 - uses OS System call - mmap
 - Its default SE from 3.0 version
 - u can change : --storageEngine mmapv1
 - can fine using db.serverStatus();
 
 - come with Collection Level Locking from 3.0
 - prior to this there was Database Level Locking in 2.2/2.6
 - Locking is about Share resource
 - Multiple readers and single Writter Lock
 - as one writter comes in..it locks all the reader as well as Writters
 - its not only about DATA,there is Meta-data
   - like, two docs located on different space in disk may share same index, so update to one doc should also change to other one
 - Journal : to ensure consistency
  - with this u can write what u about to do..and then you do
  - so if disk fails : its check on previous update and make the data consistence.
  - so if disk comes back.it checks, if previous work is completed looking in journal.

  - finally : Data on disk is in BSON
  - so, bits are directly maped from disk to virtual memory

#Quiz: Storage Engine: MMAPv1

To understand MMAPv1, it is important to know that it:


Maps JSON directly to BSON.
Maps data coming through the socket directly onto disk.
Maps compressed data files directly into BSON.
Maps data files directly into virtual memory.*
Maps data files directly into physical memory.
Show Answer

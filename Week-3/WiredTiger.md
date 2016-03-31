# WIREDTIGER SE
 - new in mongodb 3.0
 - doc level locking
 - compression in doc
 - gives high performance.
 - open source

 #history
 - Was an independent company
 - used by many dbs.
 - mongodb join hands with WiredTiger : to be Plugable SE
 
 #Work
 - if mongod --help
   - it shows default SE : mmapv1
   - we can change to :
      mongod --storageEngine wiredTiger
       - IT FAILS as..there are some file in /data/db which are of Mmapv1
       - so empty the directory /data/db

   - after that..it will work
  
  - It stores data in disk in B-Tree
  - if u are updating doc..it will re-write it again
  - Wired tiger hav 2 caches
    - wired tiger cache 
      - half of the RAM (default)
    - file system cache 
  
  - CHECKPOINT
   - during checkpoint- data goes form Wiretiger cache to FS cache - and from there it gets flush to Disk
   - it initize new checkpoint after 60 seconds
  - you can go to last consistence checkpoint
  - you dont have to journalling for wired tiger as..it works for u as..to get last consistent data
 

 #Document Level Locking
  - its not lock..
  - write should scale with no. of threads
 #Compression
  - it comes with 3 compression options
  - 1: Snappy(Default) - fast
    2: Zlib - more compression - takes some speed
    3: None

WiredTiger options:
  --wiredTigerCacheSizeGB arg           maximum amount of memory to allocate 
                                                        for cache; defaults to 1/2 of physical RAM
  --wiredTigerStatisticsLogDelaySecs arg (=0)
							seconds to wait between each write to a
							statistics file in the dbpath; 0 means do not log statistics
 --wiredTigerJournalCompressor arg (=snappy)
                                                        use a compressor for log records [none|snappy|zlib]
																																			        --wiredTigerDirectoryForIndexes       Put indexes and data in different directories
																																									  --wiredTigerCollectionBlockCompressor arg (=snappy) block compression algorithm for collection data [none|snappy|zlib]
																																																			    --wiredTigerIndexPrefixCompression arg (=1) use prefix compression on row-store 



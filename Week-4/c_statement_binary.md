#Statement_Base/ Binary_Base  Replication
 - Statement base : where we can take complete statement and run on secondary side.
   - so when..we run db.foo.remove({age:30})
     - after primary..if 100 doc are removed..for secondary..it will make statement like.
          db.foo.remove({_id})
          db.foo.remove({_id})
       so..that..we hav to remove just that doc.no need to check it.
   - 
 - Binary : will store like..file/offset/len/data and these will store on secondary.
   eg: it will take file info, offset of data start , how much to be taken, what is the data.
   - this is like..few writes in data file, so take that..data and store it in secondary
   - Good : what to do..is already done.
            - just take data and store.
   - BAD : we shud hav extact line to line..byte to byte data..and location..i=on secodary..to read next time..from same place.
          - if primary is using 2.6.0 and secondary 3.0.0, these diff version may write on diff file offset.	
 -   

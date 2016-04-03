#Profiler

- can be use mongod level
- level of profile are 
  0 = off
  1 = selective
  2 = on
- db.setProfilingLevel(2)
- it works db level
- now..all the operation will be profiled
- show collections : will show syste.profile file
  which contains all the profiling
- db.system.profile.count() : show the count.
-  db.system.profile.find().sort({$natural:-1}).limit(1)
- system.profile is OFF by default.


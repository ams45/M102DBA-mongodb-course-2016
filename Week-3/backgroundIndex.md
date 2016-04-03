#background Index

- be sure before doing this
- its done on primary replica
- its not done on secondaries..!(technical reason)
- its slower then..foreground.
- foreground pulls are more
- db.student.createIndex({"names":1},{background:true})
  - this will not return unless..its completed.
- 
- 

#TTL Index
 - time to live
 - expire after sec
 - delete after given time.
 - note : it will not be deleted before the time.since the last update on that doc
 - db.products.createIndex({name:1},{expireAfterSeconds : 3600});
 - 

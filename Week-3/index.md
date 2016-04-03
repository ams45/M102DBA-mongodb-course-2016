# Index
 - db.foo.createIndex({a:1});
   - index is create
 - can sort using index
   - db.foo.find().sort({a:1}) -> ascending
   - db.foo.find().sort({a:-1}) -> descending
 - The index on 2 fields is compound index
 - to find which index are related to collecction
   - db.foo.getIndexes();
 - to drop index
   - db.foo.dropIndex({a:1});


#Quiz: createIndex(), getIndexes() & dropIndex()

 What will happen if an index is created on a field that does not exist in any of the documents in the collection?

 MongoDB will not create the index and not throw an error.
* MongoDB will create the index without any warning.
 MongoDB will create the index but give a warning.
 MongoDB will ask if you're sure first.
 MongoDB will throw an error and not create the index.

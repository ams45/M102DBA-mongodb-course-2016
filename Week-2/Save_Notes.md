 # save()
  > myobj = db.sample.findOne()
{ "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1, "y" : 123 }
> myobj.y = "sagar"
sagar
>  db.sample.save(myobj)
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.sample.find()
{ "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1, "y" : "sagar" }
{ "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
{ "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
{ "_id" : ObjectId("56f21fefd0683e857ff92f79"), "a" : 2, "b" : "welcome", "somefield" : 22.23 }
{ "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }
{ "_id" : 100, "x" : "hello world", "y" : 123 }
{ "_id" : 101, "a" : 300 }


 # Quiz 
Quiz: save() Command

What happens if you try to use db.collection.save(document) if the inserted document has no _id?

It will assign the document a new _id of the type already used in the table and insert it.
It will assign the document an existing _id field at random and overwrite that existing document.
It will insert the document with no _id.
It will infer on its own what you meant and do that.
It will assign the document an objectID for its _id field, and then insert it.[RIGHT ANSWER]
It will throw an exception, as it cannot update a document that does not exist in the collection.


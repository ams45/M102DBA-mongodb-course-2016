# UPDATE

 - db.<collection>.update(<where>,<doc>)
 - two kind of update :
   - full doc update/replacement
   - partial update (set..kind)

 - option parameter :
   - <upset> : update or insert if not present
   - <multi> : update many doc>
 # e.g :
 
 > db.sample.find()
 { "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1 }
 { "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
 { "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
 { "_id" : ObjectId("56f21fefd0683e857ff92f79"), "a" : 2, "b" : "welcome", "somefield" : 22.23 }
 { "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }
 { "_id" : 100, "a" : 200 }
 { "_id" : 101, "a" : 300 }
 > db.sample.update({_id:100},{"_id":100,x:"hello world",y:123})
 WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
 > db.sample.find()
 { "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1 }
 { "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
 { "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
 { "_id" : ObjectId("56f21fefd0683e857ff92f79"), "a" : 2, "b" : "welcome", "somefield" : 22.23 }
 { "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }
 { "_id" : 100, "x" : "hello world", "y" : 123 }
 { "_id" : 101, "a" : 300 }

 //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

  - if we try to change _id : 120 : which its not there..! WE GET ERROR..!

  > db.sample.update({_id:100},{"_id":120,x:"hello world",y:123})
  WriteResult({
  	"nMatched" : 0,
	"nUpserted" : 0,
	"nModified" : 0,
	"writeError" : {
	"code" : 16837,
	"errmsg" : "The _id field cannot be changed from {_id: 100.0} to {_id: 120.0}."
	}
   })
// @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

  > myobj = db.sample.findOne()
  { "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1 }
  > myobj
  { "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1 }
  > myobj.y = 123
  123
  > myobj
  { "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1, "y" : 123 }
  > db.sample.find()
  { "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1 }
  { "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
  { "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
  { "_id" : ObjectId("56f21fefd0683e857ff92f79"), "a" : 2, "b" : "welcome", "somefield" : 22.23 }
  { "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }
  { "_id" : 100, "x" : "hello world", "y" : 123 }
  { "_id" : 101, "a" : 300 }

  > db.sample.update({_id:myobj._id},myobj)
  WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 

# Quiz: Update

Check all that are true about the _id field:

It must be of type ObjectId()
It must exist in every document
It can be changed
It must be unique inside the collection
It is automatically indexed

# Answer :
It must exist in every document
It must be unique inside the collection
It is automatically indexed

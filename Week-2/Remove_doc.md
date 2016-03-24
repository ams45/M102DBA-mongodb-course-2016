 #Remove Doc
  - db.<collection>.remove(<exp>)
  - e.g
  > db.sample.find({_id:100})
     { "_id" : 100, "x" : "hello world", "y" : 123, "arr" : [ "hi" ] }
  > db.sample.remove({_id:100}) 
    WriteResult({ "nRemoved" : 1 })
  > db.sample.find()
	{ "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1, "y" : "sagar" }
	{ "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
	{ "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
	{ "_id" : ObjectId("56f21fefd0683e857ff92f79"), "a" : 2, "b" : "welcome", "somefield" : 22.23 }
	{ "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }
	{ "_id" : 101, "a" : 300, "y" : 200 }

  - db.sample.remove({ }) : will remove all the docs.

  -
#quiz:

Suppose we have documents in the users collection of the form:
{
 _id : ObjectId("50897dbb9b96971d287202a9"),
 name : "Jane",
 likes : [ "tennis", "golf" ],
 registered : false,
 addr : {
   city : "Lyon",
   country : "France" 
 } 
}
How would we, in the mongo shell, delete all documents in the collection where city is "Lyon" and registered is false?

#Answer : db.users.remove({"addr.city" : "Lyon","registered" : false})
 

 

# Partial Update

 - BSON Document SIZE LIMIT : 16MB/doc
 - std check if the doc is fetch from network.it cant fetch like 100MB doc..!which might create problem in RAM..!

 - $set : to set particular value
 - $push : to allow us to add in Array
 - $addToSet : will add to array if not present
 - $pop : remove from array
 - $unset : remove from array

 for more find on mongodb doc
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 $SET :
> db.sample.find()
{ "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1, "y" : "sagar" }
{ "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
{ "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
{ "_id" : ObjectId("56f21fefd0683e857ff92f79"), "a" : 2, "b" : "welcome", "somefield" : 22.23 }
{ "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }
{ "_id" : 100, "x" : "hello world", "y" : 123 }
{ "_id" : 101, "a" : 300 }

> db.sample.update({_id:101},{$set:{y : 100}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })

> db.sample.find()
{ "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1, "y" : "sagar" }
{ "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
{ "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
{ "_id" : ObjectId("56f21fefd0683e857ff92f79"), "a" : 2, "b" : "welcome", "somefield" : 22.23 }
{ "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }
{ "_id" : 100, "x" : "hello world", "y" : 123 }
{ "_id" : 101, "a" : 300, "y" : 100 }
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 $INC :

> db.sample.update({_id:101},{$inc:{y : 100}})

WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.sample.find()
{ "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1, "y" : "sagar" }
{ "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
{ "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
{ "_id" : ObjectId("56f21fefd0683e857ff92f79"), "a" : 2, "b" : "welcome", "somefield" : 22.23 }
{ "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }
{ "_id" : 100, "x" : "hello world", "y" : 123 }
{ "_id" : 101, "a" : 300, "y" : 200 }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
$PUSH :
> db.sample.update({_id:100},{$push:{arr:"hi"}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.sample.find()
{ "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1, "y" : "sagar" }
{ "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
{ "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
{ "_id" : ObjectId("56f21fefd0683e857ff92f79"), "a" : 2, "b" : "welcome", "somefield" : 22.23 }
{ "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }
{ "_id" : 100, "x" : "hello world", "y" : 123, "arr" : [ "hi" ] }
{ "_id" : 101, "a" : 300, "y" : 200 }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#Quiz
Quiz: Partial Updates & Document Limits

Suppose we have a collection, "cars", with one document preexisting:
{ "_id" : 100, "name" : "GTO", "year" : 1969, "color" : "red" }
Which of the following statements would set the available field to 1?

db.cars.update({},{$inc:{available:true}})
db.cars.update({_id:100},{$set:{available:1}})
db.cars.update({_id:100, $set:{available:1}})



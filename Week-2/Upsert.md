#Upsert
> db.sample.update({_id:"/sports/tennis"},{$inc : {views : 1}},true);
WriteResult({
	"nMatched" : 0,
	"nUpserted" : 1,
	"nModified" : 0,
	"_id" : "/sports/tennis"
})
> db.sample.find()
{ "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1, "y" : "sagar" }
{ "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
{ "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
{ "_id" : ObjectId("56f21fefd0683e857ff92f79"), "a" : 2, "b" : "welcome", "somefield" : 22.23 }
{ "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }
{ "_id" : 101, "a" : 300, "y" : 200 }
{ "_id" : "/sports/tennis", "views" : 1 }
> db.sample.update({_id:"/sports/tennis"},{$inc : {views : 2}},true);
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.sample.find()
{ "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1, "y" : "sagar" }
{ "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
{ "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
{ "_id" : ObjectId("56f21fefd0683e857ff92f79"), "a" : 2, "b" : "welcome", "somefield" : 22.23 }
{ "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }
{ "_id" : 101, "a" : 300, "y" : 200 }
{ "_id" : "/sports/tennis", "views" : 3 }



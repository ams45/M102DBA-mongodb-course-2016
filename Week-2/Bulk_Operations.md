# Bulk Operation
 - Ordered
 - Unordered

 > var bulk = db.items.initializeUnorderedBulkOp();
> db.items.find()
> bulk.insert({item:"12kok",defaultQty : 200,status:"A",points:200});
> bulk.insert({item:"12gok",defaultQty : 0,status:"p",points:0});
> bulk.execute()
BulkWriteResult({
	"writeErrors" : [ ],
	"writeConcernErrors" : [ ],
	"nInserted" : 2,
	"nUpserted" : 0,
	"nMatched" : 0,
	"nModified" : 0,
	"nRemoved" : 0,
	"upserted" : [ ]
})
> db.items.find()
{ "_id" : ObjectId("56f2e54fd0683e857ff92f7b"), "item" : "12kok", "defaultQty" : 200, "status" : "A", "points" : 200 }
{ "_id" : ObjectId("56f2e54fd0683e857ff92f7c"), "item" : "12gok", "defaultQty" : 0, "status" : "p", "points" : 0 }



> var c = db.items.initializeOrderedBulkOp()
> c.find({item:"12kok"}).remove()
> c.find({item:"12gok"}).update({$inc:{points:1}})
> c.execute()
BulkWriteResult({
	"writeErrors" : [ ],
	"writeConcernErrors" : [ ],
	"nInserted" : 0,
	"nUpserted" : 0,
	"nMatched" : 1,
	"nModified" : 1,
	"nRemoved" : 1,
	"upserted" : [ ]
})
> db.items.find()
{ "_id" : ObjectId("56f2e54fd0683e857ff92f7c"), "item" : "12gok", "defaultQty" : 0, "status" : "p", "points" : 1 }



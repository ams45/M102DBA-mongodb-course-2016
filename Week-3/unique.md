#Unique Index
 - default : regular key
 - unique: true
   - db.foo.ensureIndex(<Key pattern>,<option>)
     - option is {unique:true}
 - createIndex() : to create index
 -> t.createIndex({name : 1},{unique:true})
{
	"createdCollectionAutomatically" : false,
	"numIndexesBefore" : 1,
	"numIndexesAfter" : 2,
	"ok" : 1
}
 

 > t.insert({name:"AC7 Phone"})
 WriteResult({
 	"nInserted" : 0,
		"writeError" : {
				"code" : 11000,
		"errmsg" : "E11000 duplicate key error collection: pcat.products index: name_1 dup key: { : \"AC7 Phone\" }"
		}
  })

#QUIZ

 -If an index is created with the options document,
{ unique : true }
can 2 documents which do not include the field that is indexed exist in the same collection?

Yes
No*


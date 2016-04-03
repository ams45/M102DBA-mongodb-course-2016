#Text Index
- without index text search using regular expression
  - db.sentence.find({word:/rat/});
  - performance will not good
- so..there is Text Index
- it will index every word of the field on which it is applied
- t.createIndex({"additional_tarriffs.kind":"text"})
{
	"createdCollectionAutomatically" : false,
        "numIndexesBefore" : 2,
	"numIndexesAfter" : 3,
	"ok" : 1
}

- .find({$text: {$search: 'misc'}}).pretty()
- we also score this..
  -t.find({$text: {$search: 'misc'}},{$score:{$meta:"textScore"}}).pretty()
- .find({$text: {$search: 'misc'}},{$score:{$meta:"textScore"},_id:0}).sort({score:{ $meta:"textScore"}}).pretty()

- we can also assign language : createIndex({words:"text"},{default_lauguage:"english"})

-

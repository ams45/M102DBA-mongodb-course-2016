#Covered Queries
 - no need to touch docs
 - just use index.
 - 
 Previous
 Next
 Quiz: Covered Queries

 Suppose we run:

 db.foo.createIndex({a:1,b:1,c:1})
 db.foo.find({a:"sports", b:{$gt:100}})
 What would need to be touched in order to fulfill the query?


 Only the index needs to be touched to fully execute the query (the find() statement).

*The index and some documents need to be touched.

basic commands:
 - show dbs
 - use [database name]
 - db : will show current db
 - show collections : will show all collections for that db
 
 Inserting Doc :
   > use create_lesson_db
   switched to db create_lesson_db
   > db
   create_lesson_db
   > show collections
   > db.sample.insert({a:1})
   WriteResult({ "nInserted" : 1 })
   > show collections
   sample

   > db.sample.find()
   { "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1 }

   > db.sample.insert({a:7})
   WriteResult({ "nInserted" : 1 })
   > db.sample.insert({b:1})
   WriteResult({ "nInserted" : 1 })
   > db.sample.insert({a:2,b:"welcome" , somefield : 22.23})
   WriteResult({ "nInserted" : 1 })


   > db.sample.insert({"a":100})
   WriteResult({ "nInserted" : 1 })


   > db.sample.find().pretty()
   { "_id" : ObjectId("56f21f63d0683e857ff92f76"), "a" : 1 }
   { "_id" : ObjectId("56f21fc9d0683e857ff92f77"), "a" : 7 }
   { "_id" : ObjectId("56f21fcfd0683e857ff92f78"), "b" : 1 }
   {
   	"_id" : ObjectId("56f21fefd0683e857ff92f79"),
	"a" : 2,
	"b" : "welcome",
        "somefield" : 22.23
   }
   { "_id" : ObjectId("56f22040d0683e857ff92f7a"), "a" : 100 }

   > var x = db.sample.find().toArray()
   > x

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   

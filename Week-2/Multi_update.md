 #Multi update 
  - db.<collection>.update(<where>,<obj>,<upset>,<multi>) : multi : true/false
  
  - if we provide multi option as true : it will check whole collection
  - if its false : it will just check first and stop
  > db.collection.update( query_document , update_document , [ options_document ] ) 
  where optional options_document has any one or more of the following optional parameters:

  upsert : true/false,
  multi : true/false, 
  writeConcern: document

   -e.g :
     db.orders.update({order_id : 1234},{$inc : {priority : 1}},false,true);

Quiz: Multi Update

Which of the following are disadvantages to setting multi=false (as it is by default)?

Updates on non-indexed query fields will take longer.
Updates on indexed query fields will take longer.
Updates that the user may have intended to match multiple documents will exit prematurely, after only one update.[Right Answer]
Updates that match only one document will take longer.



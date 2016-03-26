#Homework: Homework 1.4

How would you print out, in the shell, just the value in the "name" field, for all the product documents in the collection, without extraneous characters or braces, sorted alphabetically, ascending? (Check all that would apply.)


[Right Answer]
var c = db.products.find( { }, { name : 1, _id : 0 } ).sort( { name : 1 } ); while( c.hasNext() ) { print( c.next().name); }

var c = db.products.find( { } ).sort( { name : -1 } ); while( c.hasNext() ) { print( c.next().name); }

[right Answer]
var c = db.products.find( { } ).sort( { name : 1 } ); c.forEach( function( doc ) { print( doc.name ) } );

db.products.find( { }, { name : 1, _id : 0 } ).sort( { name : 1 } )


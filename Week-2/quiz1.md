Quiz: Insertion

How would you insert the document
{ x : 3 , y : 4 }
into the temperature collection for the current database? Type your answer here as you would type it into the mongo shell.

#Answer : db.temperature.insert({ x : 3 , y : 4 })

Answer

The answer is
db.temperature.insert({ x: 3, y: 4 })
Since the mongo shell is Javascript, you don't need to quote the keys, but you can if you want to; any of these would also work:

db.temperature.insert({ x: 3, y: 4 })
db.temperature.insert({ "x": 3, "y": 4 })
db.temperature.insert({ 'x': 3, 'y': 4 })
db.temperature.insert({ x: 3, "y": 4 })


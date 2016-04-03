#Explain Method()
- mongodb lets us examine the queries.
- its explains which index is used.
- can be use with:
  - aggregate()
  - count()
  - remove()
  - update()
  - group()
- 
> t.explain().find()
{
	"queryPlanner" : {
		"plannerVersion" : 1,
		"namespace" : "pcat.products",
		"indexFilterSet" : false,
		"parsedQuery" : {
			"$and" : [ ]
		},
		"winningPlan" : {
			"stage" : "COLLSCAN",
			"filter" : {
				"$and" : [ ]
			},
			"direction" : "forward"
		},
		"rejectedPlans" : [ ]
	},
	"serverInfo" : {
		"host" : "mahasagar-medibox",
		"port" : 27017,
		"version" : "3.2.4",
		"gitVersion" : "e2ee9ffcf9f5a94fad76802e28cc978718bb7a30"
	},
	"ok" : 1
}

- "winningPlan.stage" : it tells us that..its collection level scan.
- we can use Explain with insert/ delete.
 - as it will not do it proccess.but just explain us how it will be executed.
- in winning plan
  - KeyPattern explains wht index we are using for this.
# execution Stats
 - query planner is default
 - Execution stats
  - includes query planner	
  - it explains more 
   - time to execute
   - no of docs returned
   - doc examine
 
> exp = db.products.explain("executionStats")
Explainable(pcat.products)
> exp.find({type:"tv"})
{
	"queryPlanner" : {
		"plannerVersion" : 1,
		"namespace" : "pcat.products",
		"indexFilterSet" : false,
		"parsedQuery" : {
			"type" : {
				"$eq" : "tv"
			}
		},
		"winningPlan" : {
			"stage" : "COLLSCAN",
			"filter" : {
				"type" : {
					"$eq" : "tv"
				}
			},
			"direction" : "forward"
		},
		"rejectedPlans" : [ ]
	},
	"executionStats" : {
		"executionSuccess" : true,
		"nReturned" : 1,
		"executionTimeMillis" : 0,
		"totalKeysExamined" : 0,
		"totalDocsExamined" : 12,
		"executionStages" : {
			"stage" : "COLLSCAN",
			"filter" : {
				"type" : {
					"$eq" : "tv"
				}
			},
			"nReturned" : 1,
			"executionTimeMillisEstimate" : 0,
			"works" : 14,
			"advanced" : 1,
			"needTime" : 12,
			"needYield" : 0,
			"saveState" : 0,
			"restoreState" : 0,
			"isEOF" : 1,
			"invalidates" : 0,
			"direction" : "forward",
			"docsExamined" : 12
		}
	},
	"serverInfo" : {
		"host" : "mahasagar-medibox",
		"port" : 27017,
		"version" : "3.2.4",
		"gitVersion" : "e2ee9ffcf9f5a94fad76802e28cc978718bb7a30"
	},
	"ok" : 1
}
 - this includes query planner as well as execution stats
 -   totalDocsExamined,executionTimeMillis, 
 
# AllPlanExecution
 - this will give us..all the available plans for that query.
 - 	db.products.explain("allplanexecution").find()
 
#Quiz: Explain Plans

An explain plan can tell you which of the following? Check all that apply.


How many page faults occurred for the query.
Which index you should build that you don't already have.
*How many documents a query examines.
*How many documents a query returned.
*What indexes a query uses.


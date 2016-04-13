#READ PREFERENCE OPTIONS
we can have option to read data from replica set.

 - primary[default]
 - primary prefered
   - try first for primary..to read..if not then got o secondary

 - secondary
   - read only from secondary..to low the load.
 - secondary prefered
   - use secondary first.if not then go for primary.
   
 - nearest
   - go to nearest server,in term of network lantency.

#when to use what
 -when in doubt : use primary prefered
 -when remote : use nearest
 - use secondary for certain reporting workloads.
 - even read load : nearest
 

#Mongos process
  - will talk to all this options.
  - v2.2+ feature.


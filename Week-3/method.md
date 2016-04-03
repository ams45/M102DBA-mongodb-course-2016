 #CurrentOp()
  - db.currentOp();
#killOp()
  - db.killOp(...)
  - give the opid as parameter

Quiz: currentOp() & killOp() Revisited

Which ops are safe to kill (without any special effort or cleanup or implications later beyond the obvious):

A query*
A findAndModify on a primary*
A foreground create index building on a primary*
A foreground create index building on a secondary
A compact command job

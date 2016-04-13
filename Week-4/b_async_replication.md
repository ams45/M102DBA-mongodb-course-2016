#Asynchronous Replication
 - if client WRITE a doc - it will first write to primary - then to slave/secondary.. Asynchronously.
 - so..primary can give acknowledgement to client.after replication.
 if synchrononusly - then..there is alot of communication in master and slave..which cost..lot of network connectivity.
 - In mongo - their is One Primary..and multiple Secondary..
 - its not master - master replication
 
 #Quiz: Asynchronous Replication

 Which of the following are true about replication in MongoDB?

 *Works on commodity hardware
 *Supports a model of replication with a single primary and multiple secondaries
 Also supports multi-master replication
 *Works across wide area networks
 * Provides eventual consistency

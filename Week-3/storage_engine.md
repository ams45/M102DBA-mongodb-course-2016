# Storage Engine 
 - SE is in between Database and Hardware
 - it handles CURD operations
 - DONT : its dont change query structure
        : Its not in shell
	: not in Driver
	: it dont change behavier at cluster level
 
 - Does :it effects how the data is store in disk
        :it effects how data is delete/removed from disk
	: effects how data is read from disk
	: it effects how data structure is used to store data

 - u can choose which storage engine to be used
 - there are 2 types of SE
   : MMAPv1
     - classic SE
     -  maps the data file directly in Virtual Memory and allows OS to operate on files
     -
   : Wired Tiger
     - Company came to work with mongodb in 2014
     - new SE for new Version
     - Open Source
     
#quiz
The storage engine directly determines which of the following? Check all that apply.

The wire protocol for the drivers
Architecture of a cluster
The data file format*
Format of indexes*

#Answer

The storage engine handles the interface between the database and the hardware, and by hardware, we mean specifically memory and disk, and any representations of the data (or metadata) that is located there, which is to say the data and indexes.

The data file format - The data files' format is determined by the storage engine, so this choice is correct. Different storage engines can implement different types of compression, and different ways of storing the BSON for mongoDB.

Architecture of a cluster - We picked false here, but you might argue with this choice. The architecture of the cluster is determined by interactions between servers, which communicate over the wire. Since the storage engine doesn't affect the wire protocol, the server architecture could be exactly the same, which is why we went with false. Even so, one might argue that a good choice of storage engine should result in a smaller cluster to handle the same workload. If your gut was to go with true for this reason, that's a defensible choice.

The wire protocol for the drivers - False. The wire protocol determines how servers communicate with each other, or with the applications. This is clearly outside of the storage engine.

Format of indexes - True. It may not be obvious when you first think about it, but indexes are controlled by the storage engine. For instance, MongoDB uses Btrees. With MongoDB 3.0, WiredTiger will be using B+ trees, with other formats expected to come in later releases.


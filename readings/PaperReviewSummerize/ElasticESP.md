#Elastic Stream Processing
**Common research goal**: to avoid over-provisioning of resources without sacrificing QoS. 

**Common challenge**: the movement of operators (or states if the operator is stateful) (TPDS 2012, 2013)

**Other challenges**: fault-tolerance (Sigmod 2014), SLA (DEBS 2014).


##Partition-based
1. In IPDPS'09, Elastic Scaling of Data Prallel Operators in Stream Processing. And PACT'12, Auto-parallelizing stateful distributed streaming applications. 
	
	The author proposed method for streaming operator (stateless and stateful) elasticity on multi-core CPUs.
	## 
2. In VLDB'11, Massive Scale-out of Expensive Continuous Queries.
	
	The author propose a parallelized stream spliting operator (parasplit) for massive-volume streams
	##
3. In DEBS'13, Adaptive Input Admission and Management for Parallel Stream Processing	
	###Remarkable discussion:
	"In general, the elastic scalability feature is tightly coupled with the Parallelization model."	
		
	1. pipelined parallelism: load-balancing/adaptively requires moving operators and state across different nodes.
	2. partitioned parallelism model:splits input streams into disjoint partitions, each of which is processed by a replica of the query in a parallel fashion.
	###Solutions:
	1. streams are profiled at runtime and their statistics are used for making forecasts.
	2. query load information is monitored at runtime
	3. With those knowledge, the system can then set number of query processing node (also for merge node)
	4. They also provide input and query aware stream partitioning methods.
	##	
4. Elastic scaling for data stream processing, TPDS 2013
	###control parallization level to achieve better elastic
	They asked: 
	“Yes, we can Auto-parallelization.” 
	(This is the main approach in the topic of parallelize operator of stream processing).
	“But, How many parallel channels provide the best throughput? The answer to this question changes depending on the workload dynamics and resource availability at run-time.” 
	(Put the previous problem into elastic context)
	
	They target at “high throughput”, and hope to pay “as little as possible”.
	Their solution can be simply described as : dynamic selection of the optimal level of operator parallelism.
	
##Pipeline-based
1. Streamcloud: an elastic and scalable data streaming system. TPDS, 2012
	###A summarize work
	
	This paper compared three state movement protocols. The most efficient solution works as follows:
	
	![](http://i.imgur.com/bPaDE5c.png)
	
	e.g., 
	To move A1 from Host 2 to Host 4:
	Pause F1 in Host 1, all input are buffered.
	Extract states of A1.
	Move all intermediate results of A1 to Host 4.
	Restart A1.
	Restart F1.
	##
2. Integrating scale out and fault tolerance in stream processing using operator state management, sigmod 2013
	###scale and fault tolerance.
		
	As the name suggested, this paper can be simply summarized as: elastic ESP + efficient fault tolerance handling .
	Basically, instead of providing explicitly operator movement, it uses checkpoint-like method to store/restore the states of operators. Fault-tolerance is naturally being supported by this method.
	Of course, to make it very efficient is not simple (otherwise not possible to appear in sigmod). 
	##
3. Latency-aware Elastic Scaling for Distributed Data Stream Processing Systems, DEBS’14 -- Thomas	
	###SLA-awareness operator movement.	
	
	The author asked: 
	Yes, we can do elastic,
	But, operator movement brings overhead!  Which may end up with SLA violation! (good observation)
	So, the difference compared to previous work is that the author make sure no SLA violated in the elastic ESP system.

##General
1. Stormy
	###A phd workshop
	In DanaC'12, Stormy:An Elastic and Highly Available Streaming Service in the Cloud.
	###Target:
	a *scalable*, *elastic*, and *fault-tolerant* framework for continuous data processing, while at the same time *optimizing resource utilization* and *increasing cost efficiency*.
	###Techniques:
	1. Distributed hash tables (DHT): for efficient data distribution, reliable routing, and flexible load balancing.
		1. instead of mapping keys to data, map **events to queries**.
	2. Replication: for high availability, queries are replicated on several nodes, and events are concurrently executed on all replicas.
	
	###My comments:
	Queries and the corresponding stream are hash-distributed into different nodes.
	

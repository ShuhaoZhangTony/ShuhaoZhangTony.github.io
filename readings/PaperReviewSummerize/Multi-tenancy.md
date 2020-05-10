#Multi-tenancy

##RDBS
1. In ICDE'12: Towards Multi-Tenant Performance SLOs.

	###Problem:
	With Database-as-a-Service (DaaS), there's an increasing motivation to provide performance goals in Service Level Objectives (SLOs). Providing such goals is challenging because they have to balance:

	1. the performance that they can deliver to tenants 
	2. the data center's operating costs.
  	
	In general, aggressively aggregating tenants on each server reduces the operating costs but degrades performance for the tenants.

	###Solution:
	Provide a framwork that takes input: the tenant workloads, their performance SLOs, and the server hardware available. And output: a cost effective recipe that specifies how much hardware to provision and how to schedule the tenants on each hardware resource.
2. In VLDB'13:CPU Sharing Techniques for Performance Isolation in Multi-tenant Relational Database-as-a-Service.
	###Problem:
	Assume the tenants are **co-located already** and fixed. (Some existing works on this direction)
	Still, the performance of one tenant's workload can be significantly affected by the resource demands of co-located tenants.
	###Solution:
	Isolate the **key** resources needed by the tenants' workload. To be specific, in this paper, the author focus on the **scheduling algorithm**: a work-conserving, dynamic priority scheduling algorithm.
##StreamProcessing
1. In ICDE'10:Admission Control Mechanisms for Continuous Queries in the Cloud
	###Problem:
	**auction-based** mechanisms for admission control of continuous queries. The challenges come from the difficulty of effectively taking advantage of the **shared processing** between queries.
	###Solution:
	Several payment machanisms are designed and evaluated.
2. 
##General
1. In NSDI'15: Retro:Targeted Resource Management in Multi-tenant Distributed Systems.

	###Problem:
Providing performance guarantees and isolation in multi-tenant distributed systems is extremely hard.

	1. Tenants share resources within a process (OS level) and also across multiple processes and machines (Hypervisor level).
	2. User task compete with system task.
	3. Input workload, workload of other tenants and system tasks changes.

	###Solution
	Retro: separate resource management policies from the mechanisms required to implement them.
	The goal is to provide a easy-to-use platform for designer to design system policies. The approach include several abstractions:

	1. group all system activities-both **tenant-generated requests** and **system-generated tasks** into individual workflows, which form the **units** of resource management. 
	2. resource abstraction: unifies arbitrary resouces, such as physical storage, network, CPU, thread pools, and locks, enabling resource-agnostic policies. Each resource exposes two states: *slow down*, *load*.
	3. control points, implement resource scheduling mechanisms such as token buckets, fair schedulers, or priority queues.
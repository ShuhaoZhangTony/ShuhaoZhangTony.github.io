#Stream Query Optimization
##Correlation-Aware Partitioning
1. In VLDB'13, High Performance Stream Query Processing With Correlation-Aware Partitioning.
We should use different query plan for different streams with different characteristics. 

2. In ICDE'13, "Robust Distributed Stream Processing", they identify the problem: **Data fluctuation** make repeated re-allocation of resources ineffective. They proposed instead, a load distribution strategy that is robust to data fluctuations. They model it as a decision under uncertainty problem.

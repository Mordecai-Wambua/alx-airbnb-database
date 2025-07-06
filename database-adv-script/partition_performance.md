#  Partitioning Large Tables
**Objective**: Implement table partitioning to optimize queries on large datasets.

## Approach:
- Removed foreign keys temporarily to support partitioning.
- Partitioned table by YEAR(start_date) using RANGE partitioning.
- Compared performance of a date-range query using EXPLAIN.

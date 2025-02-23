# SQL Query Optimization Issue

This repository demonstrates a potential issue with SQL query optimization when dealing with non-unique indexes.  The query might not return all expected results if multiple rows satisfy the query condition and a non-unique index is used by the query optimizer.

## Bug Description
The provided SQL query is intended to retrieve all employees in department 10 with a salary greater than 100000. However, if a non-unique index is available on `department_id` and `salary`, the query optimizer may use this index, leading to an incomplete result set. This is because non-unique indexes only guarantee uniqueness of the index key, not uniqueness of the data.

## Solution
The solution involves ensuring that the query optimizer does not use non-unique indexes to resolve this issue.  One possible solution is to use a hint to force a table scan.
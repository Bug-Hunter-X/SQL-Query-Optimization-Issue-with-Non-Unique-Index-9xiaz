```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
This query might not return the expected results if there is a non-unique index on `department_id` and `salary`.  The query optimizer might choose to use the non-unique index rather than a full table scan, potentially leading to incorrect or incomplete results.

The issue stems from the fact that non-unique indexes can return only one matching row per index entry, even if multiple rows match the query criteria.  If there are multiple employees in department 10 with a salary above 100000, only one might be retrieved.
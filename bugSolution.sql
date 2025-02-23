```sql
-- Solution 1: Force a table scan (database-specific syntax may vary)
SELECT /*+ FULL(employees) */ * FROM employees WHERE department_id = 10 AND salary > 100000;

-- Solution 2:  Ensure a suitable composite unique index exists
-- Create a unique index on (department_id, salary) if there aren't duplicates
CREATE UNIQUE INDEX idx_dept_salary ON employees (department_id, salary);

-- Then the original query should work correctly
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
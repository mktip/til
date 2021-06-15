# Exists in Check

In sql, one can easily find results that are present (or not) in a subquery via the exists statement.

```sql
-- A simple employees table
CREATE TABLE employees (
     personID  int,
     managerID int,
     name      varchar(255)
);

-- Populating employees ...
INSERT INTO employees (personID, managerID, name) VALUES (1, NULL, "Boss"      );
INSERT INTO employees (personID, managerID, name) VALUES (2, 1,    "Vice Boss" );
INSERT INTO employees (personID, managerID, name) VALUES (3, 2,    "Employee 1");
INSERT INTO employees (personID, managerID, name) VALUES (4, 2,    "Employee 2");

-- Find employees that are not managining any other employee
SELECT name FROM employees e1 WHERE NOT EXISTS (SELECT NULL FROM employees e2 WHERE e1.personID = e2.managerID);
```

/* 
LeetCode 577. Employee Bonus
----------------------------
Problem Statement:
You are given two tables: Employee and Bonus.

---------------------------------
Table: Employee
---------------------------------
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| empId       | int     |  -- Unique employee ID
| name        | varchar |  -- Employee name
| supervisor  | int     |  -- ID of their manager (can be null)
| salary      | int     |  -- Employee salary
+-------------+---------+
empId is the PRIMARY KEY of this table.

---------------------------------
Table: Bonus
---------------------------------
+-------------+------+
| Column Name | Type |
+-------------+------+
| empId       | int  |  -- Foreign key referencing Employee.empId
| bonus       | int  |  -- Bonus amount (can be null)
+-------------+------+
empId is the PRIMARY KEY of this table.

Each row in the Bonus table contains the id of an employee and their bonus amount.

Goal:
-----
Report the name and bonus amount of each employee 
whose bonus is LESS THAN 1000, 
or who DOES NOT have a bonus record (NULL).

Return the result table in any order.

---------------------------------
Example
---------------------------------
Employee table:
+-------+--------+------------+--------+
| empId | name   | supervisor | salary |
+-------+--------+------------+--------+
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |
+-------+--------+------------+--------+

Bonus table:
+-------+-------+
| empId | bonus |
+-------+-------+
| 2     | 500   |
| 4     | 2000  |
+-------+-------+

Expected Output:
+------+-------+
| name | bonus |
+------+-------+
| Brad | null  |
| John | null  |
| Dan  | 500   |
+------+-------+
Explanation:
- Brad and John have no bonus entries (NULL), so they appear with null bonuses.
- Dan has a bonus of 500 (< 1000), so he appears.
- Thomas has a bonus of 2000, so he is excluded.
*/


-- Step 1: Select from Employee (main table)
-- Step 2: LEFT JOIN Bonus to include all employees, even those without bonus records
-- Step 3: Filter where the bonus is less than 1000 OR the bonus is NULL
SELECT 
    t1.name,            -- Employee name
    t2.bonus            -- Bonus amount (can be null if no record exists)
FROM 
    Employee AS t1
LEFT JOIN 
    Bonus AS t2         -- Include all employees (even if no matching bonus record)
ON 
    t1.empId = t2.empId
WHERE 
    t2.bonus < 1000      -- Include employees with a bonus less than 1000
    OR t2.bonus IS NULL; -- Include employees who do not have a bonus record

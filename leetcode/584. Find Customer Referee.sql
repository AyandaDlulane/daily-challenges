/*
------------------------------------------------------------
Question: 584. Find Customer Referee
Difficulty: Easy
------------------------------------------------------------

Table: Customer

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
id is the primary key (unique for each customer).
Each row represents a customer's name and the id of the person who referred them (referee_id).

------------------------------------------------------------
Task:
Write a SQL query to report the names of customers 
who are **not referred by the customer with id = 2**.

Return the result table in any order.

------------------------------------------------------------
Example Input:
Customer table:
+----+------+------------+
| id | name | referee_id |
+----+------+------------+
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+

Expected Output:
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+

Explanation:
- Customers referred by customer with id = 2 → Alex and Mark → EXCLUDED
- All others (not referred by 2 or have no referee) → INCLUDED
------------------------------------------------------------
*/

-- ✅ Select the name column from Customer
-- ✅ Include only customers whose referee_id is not equal to 2
-- ✅ Also include customers with no referee (referee_id IS NULL)
-- ⚠️ The condition "referee_id != 2 OR referee_id IS NULL"
--    ensures both cases are covered properly.

SELECT name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;

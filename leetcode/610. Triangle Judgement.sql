/*
------------------------------------------------------------
Problem: Determine if Three Sides Form a Triangle
Difficulty: Easy
------------------------------------------------------------

Table: triangle

+-------+-------+-------+
| x     | y     | z     |
+-------+-------+-------+
Each row represents the lengths of three sides of a potential triangle.

------------------------------------------------------------
Task:
For each row, determine whether the three numbers (x, y, z) can form a triangle.

Rules:
- Triangle inequality: The sum of any two sides must be greater than the third side.
  - For simplicity, we can check: 
    "The largest side < sum of the other two sides"
- Return "Yes" if they can form a triangle, "No" otherwise.

------------------------------------------------------------
Example Input:

+---+---+---+
| x | y | z |
+---+---+---+
| 3 | 4 | 5 |
| 1 | 2 | 3 |
+---+---+---+

Expected Output:

+---+---+---+----------+
| x | y | z | triangle |
+---+---+---+----------+
| 3 | 4 | 5 | Yes      |
| 1 | 2 | 3 | No       |
+---+---+---+----------+

------------------------------------------------------------
Query Explanation:
------------------------------------------------------------
*/

SELECT *,
       CASE
           -- Step 1: Find the largest side among x, y, z
           -- Step 2: Check if the largest side is less than the sum of the other two sides
           WHEN GREATEST(x, y, z) < (x + y + z - GREATEST(x, y, z)) THEN 'Yes'
           ELSE 'No'
       END AS triangle
FROM triangle;


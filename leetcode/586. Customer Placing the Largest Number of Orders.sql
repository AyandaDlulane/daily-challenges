/*
------------------------------------------------------------
Question: 586. Customer Placing the Largest Number of Orders
Difficulty: Easy
------------------------------------------------------------

Table: Orders

+-----------------+---------+
| Column Name     | Type    |
+-----------------+---------+
| order_number    | int     |
| customer_number | int     |
+-----------------+---------+
order_number is the primary key for this table.
Each row contains the order number and the id of the customer who placed it.

------------------------------------------------------------
Task:
Write a SQL query to find the **customer_number** of the customer who has placed 
the **largest number of orders** in the Orders table.

The result format should be a single column:
+-----------------+
| customer_number |
+-----------------+

If there is more than one customer with the same highest order count, 
you can return any one of them.

------------------------------------------------------------
Example Input:
Orders table:
+--------------+-----------------+
| order_number | customer_number |
+--------------+-----------------+
| 1            | 1               |
| 2            | 2               |
| 3            | 3               |
| 4            | 3               |
+--------------+-----------------+

Expected Output:
+-----------------+
| customer_number |
+-----------------+
| 3               |
+-----------------+

Explanation:
- Customer 1 placed 1 order.
- Customer 2 placed 1 order.
- Customer 3 placed 2 orders.
Therefore, the result is customer_number = 3.

------------------------------------------------------------
Approach Summary:
1️⃣ Group all orders by customer_number.
2️⃣ Count the number of orders per customer using COUNT(order_number).
3️⃣ Sort the grouped results in descending order (highest order count first).
4️⃣ Return the top 1 result using LIMIT 1.

------------------------------------------------------------
*/

-- ✅ Step 1: Create a subquery (alias t)
--    - Count how many orders each customer has made.
--    - Group the rows by customer_number.
--    - Add a column alias `num` for the order count.
-- ✅ Step 2: In the outer query:
--    - Select only the customer_number column.
--    - Order the subquery results by `num` in descending order.
--    - Limit the output to 1 row (the top customer).

SELECT t.customer_number
FROM (
    SELECT 
        customer_number,
        COUNT(order_number) AS num
    FROM Orders
    GROUP BY customer_number
) AS t
ORDER BY t.num DESC
LIMIT 1;

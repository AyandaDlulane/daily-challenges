/* 
LeetCode 197. Rising Temperature
--------------------------------
Problem Statement:
You are given a table 'Weather' that stores daily temperature records.

Table: Weather
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
'id' is the primary key column for this table.
Each row contains the temperature on a certain day.

Goal:
-----
Write an SQL query to find all the IDs of the dates where the temperature 
was higher than the previous day.

Return the result table ordered by id (optional in some platforms).

-------------------------------------------------
Example:

Input:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+

Output:
+----+
| id |
+----+
| 2  |
| 4  |
+----+
Explanation:
On 2015-01-02, the temperature (25) is higher than 2015-01-01 (10).
On 2015-01-04, the temperature (30) is higher than 2015-01-03 (20).
Therefore, IDs 2 and 4 are returned.
*/


-- Step 1: Select all records and compute the previous date for each day
-- Step 2: Join the table to itself (self-join) to compare today vs yesterday
-- Step 3: Filter where today's temperature is greater than yesterday's
SELECT 
    t1.id                                  -- The ID of the day when temperature is higher than the previous day
FROM 
    (
        -- Subquery t1: Adds a new column 'pre_date' which is one day before the recordDate
        SELECT 
            *, 
            DATE_SUB(recordDate, INTERVAL 1 DAY) AS pre_date  -- previous day's date
        FROM 
            Weather
    ) AS t1
LEFT JOIN 
    (
        -- Subquery t2: Copy of Weather but alias 'temperature' as 'pre_t' for clarity
        SELECT 
            *, 
            temperature AS pre_t 
        FROM 
            Weather
    ) AS t2
ON 
    t1.pre_date = t2.recordDate            -- Match each date with its previous day's record
WHERE 
    t1.temperature > t2.pre_t;             -- Keep only days where today's temperature is higher than yesterday's

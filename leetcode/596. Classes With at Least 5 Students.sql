/* 
LeetCode 596. Classes With at Least 5 Students
----------------------------------------------
You are given a table 'Courses' containing student enrollments.

Table: Courses
+-------------+---------+
| student     | varchar |
| class       | varchar |
+-------------+---------+
(student, class) is the PRIMARY KEY, meaning each student can only appear once per class.

Goal:
-----
Find all classes that have at least 5 students enrolled.

Example Input:
+---------+----------+
| student | class    |
+---------+----------+
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |
+---------+----------+

Expected Output:
+---------+
| class   |
+---------+
| Math    |
+---------+
Explanation:
- 'Math' has 6 students, so it qualifies.
- All other classes have fewer than 5 students and are excluded.
*/


-- Select the class names from the Courses table
SELECT 
    class                             -- The class we are checking for enrollment count
FROM 
    Courses                           -- Source table containing student-class enrollments
GROUP BY 
    class                             -- Group rows by each unique class name
HAVING 
    COUNT(student) >= 5;              -- Only include groups (classes) where at least 5 students are enrolled

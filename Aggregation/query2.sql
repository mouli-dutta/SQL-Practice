/*
https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
*/

WITH miscalculation AS (
    SELECT 
        id,
        CAST(REPLACE(CAST(salary AS CHAR), '0', '') AS UNSIGNED) AS modified_salary
    FROM employees
)
 
SELECT 
    CEIL(ABS(AVG(e.salary) - AVG(ms.modified_salary))) AS error
FROM employees e
JOIN miscalculation ms ON e.id = ms.id;

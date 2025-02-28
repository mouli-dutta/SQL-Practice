/*
https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true*/

WITH earnings AS (
    SELECT employee_id, months * salary AS total_earnings
    FROM employee
)

SELECT MAX(total_earnings) AS max_total_earnings, COUNT(*) AS employee_count
FROM earnings
WHERE total_earnings = (SELECT MAX(total_earnings) FROM earnings);

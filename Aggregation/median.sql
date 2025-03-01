/*
https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
*/

WITH ordered_data AS ( 
    SELECT lat_n, 
           ROW_NUMBER() OVER (ORDER BY lat_n) AS rno, 
           COUNT(*) OVER () AS total_count 
    FROM station 
) 

SELECT ROUND(AVG(lat_n), 4) 
FROM ordered_data 
WHERE 
    total_count % 2 = 0 
    AND rno IN (total_count / 2, total_count / 2 + 1) 
OR 
    total_count % 2 = 1 
    AND rno = CEIL(total_count / 2);

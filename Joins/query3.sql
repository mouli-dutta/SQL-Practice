/*
https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true
*/

WITH MinCoins AS (
    SELECT 
        w2.power, 
        wp2.age, 
        MIN(w2.coins_needed) AS min_coins
    FROM Wands w2
    JOIN Wands_Property wp2 
    ON w2.code = wp2.code
    WHERE wp2.is_evil = 0
    GROUP BY w2.power, wp2.age
)
SELECT 
    w.id,
    wp.age,
    w.coins_needed,
    w.power 
FROM Wands w
JOIN Wands_Property wp 
ON w.code = wp.code
JOIN MinCoins mc 
ON w.power = mc.power 
AND wp.age = mc.age 
AND w.coins_needed = mc.min_coins
WHERE wp.is_evil = 0
ORDER BY w.power DESC, wp.age DESC;




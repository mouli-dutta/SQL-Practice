/* 
https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
*/


WITH ChallengeCounts AS ( 
    SELECT 
        c.hacker_id, 
        h.name, 
        COUNT(c.challenge_id) AS challenge_count 
    FROM hackers h 
    JOIN challenges c 
    ON h.hacker_id = c.hacker_id 
    GROUP BY c.hacker_id, h.name 
) 

SELECT 
    hacker_id, 
    name, 
    challenge_count 
FROM ChallengeCounts 

WHERE challenge_count = (
    SELECT 
        MAX(challenge_count) 
    FROM ChallengeCounts
) 
OR 
challenge_count NOT IN ( 
    SELECT challenge_count 
    FROM ChallengeCounts 
    GROUP BY challenge_count 
    HAVING COUNT(hacker_id) > 1 
) 

ORDER BY challenge_count DESC, hacker_id;





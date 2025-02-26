/*
https://www.hackerrank.com/challenges/full-score/problem
*/

WITH filtered_submissions AS (
    SELECT s.hacker_id, s.submission_id
    FROM Submissions s
    JOIN Challenges c ON s.challenge_id = c.challenge_id
    JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
    WHERE s.score = d.score
)
SELECT h.hacker_id, h.name
FROM filtered_submissions fs
JOIN Hackers h ON fs.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING COUNT(fs.submission_id) > 1
ORDER BY COUNT(fs.submission_id) DESC, h.hacker_id;

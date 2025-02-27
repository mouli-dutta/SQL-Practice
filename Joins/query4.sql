/*
https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true
*/


with max_scores as ( 
    select 
        s.hacker_id, 
        h.name, 
        max(s.score) as max_scores 
    from submissions s 
    inner join hackers h 
    on s.hacker_id = h.hacker_id 
    group by s.hacker_id, h.name, s.challenge_id
) 

select 
    hacker_id, 
    name, 
    sum(max_scores) 
from max_scores 
group by hacker_id, name 
having sum(max_scores) > 0 
order by 3 desc, 1 asc;



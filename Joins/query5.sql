/* 
https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
*/

with ChallengeCount as( 
  select 
    h.hacker_id,
    h.name,
    count(c.challenge_id) as challenge_count 
  from Hackers h 
  join Challenges c 
  on h.hacker_id = c.hacker_id 
  group by h.hacker_id,h.name
),

MaxChallengeCount as( 
  select 
    max(challenge_count) as max_ch_count 
  from ChallengeCount
),

CountFrequency as( 
  select 
    challenge_count, 
    count(*) as count_frequency 
  from ChallengeCount 
  group by challenge_count
)

select 
  cc.hacker_id,
  cc.name, 
  cc.challenge_count 
from ChallengeCount cc 
join CountFrequency cf 
on cc.challenge_count=cf.challenge_count 
join MaxChallengeCount mc 
where cf.count_frequency=1 or cc.challenge_count=mc.max_ch_count 
order by cc.challenge_count desc, cc.hacker_id;









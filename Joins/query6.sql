/*
https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
*/

select s.name from students s 
join friends f on 
s.id=f.id 
join packages p1 
on s.id=p1.id 
join packages p2 
on p2.id=f.friend_id 
where p2.salary > p1.salary 
order by p2.salary;

/*
https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
*/

with report as(
  select
    name,
    grade,
    marks
  from Students s
  join Grades g
  on s.marks between g.min_mark and g.max_mark
)

select
  case when grade >= 8 then name
       else null end,
  grade,
  marks
from report
order by grade desc, name;



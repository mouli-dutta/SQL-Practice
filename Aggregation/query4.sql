/*
https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
*/
select round(sum(LAT_N), 4) from station where LAT_N between 38.7880 and 137.2345;


/*
https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
*/
select max(round(LAT_N, 4)) from station where LAT_N < 137.2345;


/*
https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true
*/
select round(LONG_W, 4) from station where LAT_N < 137.2345 order by LAT_N desc limit 1;


/*
https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
*/
select round(LAT_N, 4) from station where LAT_N > 38.7780 order by LAT_N limit 1;


/*
https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
*/
select round(LONG_W, 4) from station where LAT_N > 38.7780 order by LAT_N limit 1;


/*
https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
*/
with points as (
    select 
        min(LAT_N) as a,
        min(LONG_W) as b,
        max(LAT_N) as c,
        max(LONG_W) as d
    from station
)

select round((abs(c-a) + abs(d-b)), 4) as manhattan_distance from points;



/*
https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
*/
with points as (
    select 
        min(LAT_N) as a,
        min(LONG_W) as b,
        max(LAT_N) as c,
        max(LONG_W) as d
    from station
)

select 
    round(
        sqrt(
            pow(a - c, 2) + pow(b - d, 2)
        )
    , 4) 
    
    as euclidean_distance 
from points;














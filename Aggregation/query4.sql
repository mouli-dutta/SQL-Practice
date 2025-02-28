/*
https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
*/
select 
    round(sum(LAT_N), 4) 
from station 
where LAT_N between 38.7880 and 137.2345;



/*
https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
*/
select max(round(LAT_N, 4)) from station where LAT_N < 137.2345;

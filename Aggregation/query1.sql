/*
https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true
*/
select count(*) from city where population > 100000;


/*
https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true
*/
select sum(population) from city where district = 'California';


/*
https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true
*/
select avg(population) from city where district = 'California';


/*
https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
*/
select sum(population) from city where countrycode="JPN";


/*
https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true
*/
select max(population) - min(population) from city;




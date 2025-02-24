/*
Query the two cities in STATION(ID, CITY, STATE, LAT_N, LONG_W) with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/

(
    select city, length(city) as len 
    from station 
    order by len asc, city asc
    limit 1
)

union all

(
    select city, length(city) as len
    from station
    order by len desc, city asc
    limit 1
);

/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT c.Continent AS Continent, FLOOR(AVG(ci.Population)) AS AvgPopulation
FROM CITY ci
JOIN COUNTRY c ON ci.CountryCode = c.Code
GROUP BY c.Continent;

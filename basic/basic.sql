# Revising the Select Query I [https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true]
SELECT * 
FROM city 
WHERE population >  100000 
AND countrycode = "USA";

# Revising the Select Query II [https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true]
SELECT name
FROM city
WHERE population > 120000
AND countrycode = "USA";

# Select All [https://www.hackerrank.com/challenges/select-all-sql/problem?isFullScreen=true]
SELECT * 
FROM city

# Select By ID [https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true]
SELECT *
FROM city
WHERE ID = 1661;

# Japanese Cities Attributes [https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true]
SELECT *
FROM city
WHERE countrycode = 'JPN';

# Japanese Cities Names [https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true]
SELECT name
FROM city
WHERE countrycode = 'JPN';

# Weather Observation Station 1 [https://www.hackerrank.com/challenges/weather-observation-station-1/problem?isFullScreen=true]
SELECT city, state
FROM station;

# Weather Observation Station 3 [https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true]
SELECT DISTINCT city
FROM station
WHERE id % 2 = 0;

# Weather Observation Station 4 [https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true]
SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;

# Weather Observation Station 5 [https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true]
SELECT city, LENGTH(city)
FROM station
ORDER BY LENGTH(city), city ASC LIMIT 1;

SELECT city, LENGTH(city)
FROM station
ORDER BY LENGTH(city) DESC, city LIMIT 1;

# Weather Observation Station 6 [https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true]
SELECT DISTINCT city
FROM station
WHERE city LIKE 'a%' 
    OR city LIKE 'i%'
     OR city LIKE 'u%'
      OR city LIKE 'e%'
       OR city LIKE 'o%';


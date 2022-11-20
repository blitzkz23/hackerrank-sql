# Revising Aggregations - The Count Function [https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true]
SELECT COUNT(name)
FROM city
WHERE population > 100000;

# Revising Aggregations - The Sum Function [https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true]
SELECT SUM(population)
FROM city
WHERE district = "California";

# Revising Aggregations - Averages [https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true]
SELECT AVG(population)
FROM city
WHERE district = "California";

# Average Population [https://www.hackerrank.com/challenges/average-population/problem?isFullScreen=true]
SELECT ROUND(AVG(population)) 
FROM city

# Japan Population [https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true]
SELECT SUM(population)
FROM city
WHERE countrycode = "JPN"

# Population Density Difference [https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true]
SELECT MAX(population) - MIN(population)
FROM city

# The Blunder [https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true]
SELECT CEIL(AVG(salary) - AVG(regexp_replace(salary, '[0]', '')))
FROM employees;

# Top Earners [https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true]
SELECT MAX(salary*months), COUNT(employee_id)
FROM employee WHERE (salary*months) IN
(
    SELECT MAX(salary * months) as max_earnings
    FROM employee
)

# Weather Observation Station 2 [https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true]
SELECT ROUND(SUM(lat_n), 2), ROUND(SUM(long_w), 2)
FROM station

# Weather Observation Station 13 [https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true]
SELECT ROUND(SUM(lat_n), 4)
FROM station
WHERE lat_n > 38.7880 AND lat_n < 137.2345

# Weather Observation Station 14 [https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true]
SELECT ROUND(MAX(lat_n), 4)
FROM station
WHERE lat_n < 137.2345

# Weather Observation Station 15 [https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true]
SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1

# Weather Observation Station 16 [https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true]
SELECT ROUND(lat_n, 4)
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n ASC
LIMIT 1

# Weather Observation Station 17 [https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true]
SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n ASC
LIMIT 1

# Weather Observation Station 18 [https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true]
SELECT ROUND(ABS(MIN(lat_n) - MAX(lat_n)) + ABS(MIN(long_w) - MAX(long_w)), 4)
FROM station

# Weather Observation Station 19 [https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true]
SELECT ROUND(
    SQRT(
        POWER(MAX(lat_n) - MIN(lat_n), 2) + POWER(MAX(long_w) - MIN(long_w), 2)
    ), 4
)
FROM station

# Weather Observation Station 20 [https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true]
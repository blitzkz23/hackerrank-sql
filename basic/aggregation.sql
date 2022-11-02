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
SELECT MAX(salary*months), (SELECT COUNT(salary*months) FROM employee WHERE employee.salary*months = salary*months)
FROM employee
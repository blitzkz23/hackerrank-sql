# African Cities [https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true]
SELECT DISTINCT(city.name)
FROM city
JOIN country
    ON city.countrycode = country.code
WHERE country.continent = 'Africa'
    
# Average Population of Each Continent [https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true]
SELECT country.continent, FLOOR(AVG(city.population)) as avg_city_population
FROM city
JOIN country
    ON city.countrycode = country.code
GROUP BY continent
ORDER BY avg_city_population ASC

# The Report [https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true]
SELECT IF(grades.grade > 7, students.name, NULL), grades.grade, students.marks
FROM students
JOIN grades
    ON students.marks BETWEEN grades.min_mark AND grades.max_mark
ORDER BY grades.grade DESC, students.name ASC

# Top Competitors [https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true]
SELECT h.hacker_id, h.name
FROM submissions AS s
INNER JOIN hackers AS h ON s.hacker_id = h.hacker_id
INNER JOIN challenges AS c ON s.challenge_id = c.challenge_id
INNER JOIN difficulty AS d ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score 
AND c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC;

# Ollivanders Inventory [https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true]
SELECT w.id, wp.age, w.coins_needed, w.power
FROM wands AS w
INNER JOIN wands_property AS wp ON w.code = wp.code
WHERE wp.is_evil = 0 AND w.coins_needed = 
    (
        SELECT MIN(coins_needed)
        FROM wands AS w2
        INNER JOIN wands_property AS wp2 ON w2.code = wp2.code
        WHERE w2.power = w.power AND wp2.age = wp.age
    )
ORDER BY w.power DESC, wp.age DESC
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
FROM submissions s
INNER JOIN hackers h ON s.hacker_id = h.hacker_id
INNER JOIN challenges c ON s.challenge_id = c.challenge_id
INNER JOIN difficulty d ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score 
AND c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC;
SELECT title
FROM movies;

SELECT title, year_released
FROM movies
ORDER BY year_released DESC;

SELECT *
FROM directors
ORDER BY country ASC;

INSERT INTO directors (first_name, last_name, country)
VALUES ("Rob", "Reiner", "USA");

SELECT last_name, director_id
FROM directors
WHERE last_name = "Reiner" AND first_name = "Rob";

INSERT INTO movies (title, year_released, director_id)
VALUES ("The Princess Bride", 1987, 11);

SELECT 
	m.title,
    m.year_released,
    d.last_name
FROM movies m
JOIN directors d ON m.director_id = d.director_id;

SELECT 
	m.title,
    m.year_released,
    d.first_name,
    d.last_name
FROM movies m
JOIN directors d ON m.director_id = d.director_id
ORDER BY d.last_name ASC;

DELETE FROM movies WHERE movie_id = 18;

DELETE FROM movies WHERE movie_id = 14;

DELETE FROM directors WHERE director_id = 1;

SELECT 
	title,
    year_released,
    first_name,
    last_name
FROM movies m
INNER JOIN directors d ON m.director_id = d.director_id
WHERE d.last_name = "Jackson" AND d.first_name = "Peter";

ALTER TABLE movies
ADD earnings INTEGER;

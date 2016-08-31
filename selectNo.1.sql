--- This query selects all films and displays the actors from each film and the characters they portray

SELECT concat(p.first_name, ' ', p.last_name) AS "Actor Name", c.character_name AS "Character Portrayed", m.title AS "Movie"
FROM movie AS m JOIN person_movie_role AS pmr
  ON m.movie_id = pmr.movie_id
JOIN person AS p
  ON pmr.person_id = p.person_id
JOIN movie_genre AS mg
  ON m.movie_id = mg.movie_id
JOIN genre AS g
  ON mg.genre_id = g.genre_id
JOIN character AS c
  ON m.movie_id = c.movie_id
WHERE pmr.role_id = 1
GROUP BY concat(p.first_name, ' ', p.last_name) , m.title, c.character_name;
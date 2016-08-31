--- Retrieves a list of Action movies with their corresponding reviews
SELECT m.title, g.genre_name, r.review
FROM reviews AS r JOIN movie AS m
 ON r.movie_id = m.movie_id
JOIN movie_genre AS mg
  ON m.movie_id = mg.movie_id
JOIN genre AS g 
  ON mg.genre_id = g.genre_id
WHERE genre_name = 'Action';
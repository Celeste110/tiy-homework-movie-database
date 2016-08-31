--- Retrieves movies and their corresponding genres
SELECT m.title AS "Movie", g.genre_name AS "Genre"
FROM movie AS m JOIN movie_genre AS mg
    ON m.movie_id = mg.movie_id
  JOIN genre AS g
    ON mg.genre_id = g.genre_id
ORDER BY g.genre_name; 
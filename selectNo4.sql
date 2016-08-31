--- This query retrieves a list of action movies that are rated R
SELECT title, rating, genre_name "genre"
FROM movie m JOIN movie_genre mg
  ON m.movie_id = mg.movie_id
  JOIN genre
  ON mg.genre_id = genre.genre_id
WHERE rating = 'R' AND
genre_name = 'Action';
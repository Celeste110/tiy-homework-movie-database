--- Add a movie into the movie table
INSERT INTO movie
(
  title,
  release_date,
  rating,
  description
)
VALUES (
  'Catch Me If You Can',
  '2002-12-25',
  'PG-13',
  'The true story of Frank Abagnale Jr. who, before his 19th birthday, ' ||
  'successfully conned millions of dollars'' worth of checks as a Pan Am pilot, ' ||
  'doctor, and legal prosecutor.' );
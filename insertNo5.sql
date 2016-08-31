-- Adds a review for the movie "Catch Me If You Can"
INSERT INTO reviews
(
  review,
  author,
  date,
  movie_id,
  country_id
) VALUES (
  'While watching ''Catch Me If You Can'' I had so much fun I smiled constantly. Well, that smile was interrupted by laughs. ' ||
  'The movie tells the story of Frank W. Abignale, Jr. who is just a kid as he pretends to be a schoolteacher. ' ||
  'After his father and mother get a divorce he runs away and starts pretending to be a co-pilot, a doctor, a lawyer. ' ||
  'The way he does this is funny and brilliant. I am not a big fan of Leonardo DiCaprio who plays Frank but in this movie ' ||
  'he is perfect. He gives a very fine performance. Tom Hanks is the FBI-agent Carl who is after him, and as always Hanks is good.' ||
  'The story is inspired by a real story. I don''t know in how many ways it is true but watching this guy all I wanted to see ' ||
  'was him pulling more of his nice little tricks. The scene where he pretends to be a schoolteacher is just great. If you ' ||
  'want a nice funny movie, not too heavy, this one will definitely please you.',
  'rbverhoef',
  '2003-06-08',
  11,
  11
);
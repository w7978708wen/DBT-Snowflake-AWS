-- "RAW_LINKS" is the table created from scratch inside folder "RAW"
-- "MOVIELENS" is the database name
-- "RAW" is the folder inside database "MOVIELENS"
-- "RAW_LINKS" is the table created from scratch inside folder "RAW"

WITH raw_links AS (
  SELECT * FROM MOVIELENS.RAW.RAW_LINKS
)

SELECT
  movieID AS movie_id,
  imdbID AS imdb_id,
  tmdbID AS tmdb_id
FROM raw_links
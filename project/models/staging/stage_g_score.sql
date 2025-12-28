-- "RAW_GENOME_SCORES" is the table created from scratch inside folder "RAW"
-- "MOVIELENS" is the database name
-- "RAW" is the folder inside database "MOVIELENS"
-- "RAW_GENOME_SCORES" is the table created from scratch inside folder "RAW"

WITH raw_genome_scores AS (
  SELECT * FROM MOVIELENS.RAW.RAW_GENOME_SCORES
)

SELECT
  movieID AS movie_id,
  tagID AS tag_id,
  relevance
FROM raw_genome_scores
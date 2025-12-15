-- "RAW_GENOME_TAGS" is the table created from scratch inside folder "RAW"
-- "MOVIELENS" is the database name
-- "RAW" is the folder inside database "MOVIELENS"
-- "RAW_GENOME_TAGS" is the table created from scratch inside folder "RAW"

WITH raw_genome_tags AS (
  SELECT * FROM MOVIELENS.RAW.RAW_GENOME_TAGS
)

SELECT
  tagID AS tag_id,
  tag
FROM raw_genome_tags
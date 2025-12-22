--change this particular view's configuration from view to table in VS Code
{{ config(materialized = 'table') }}

-- "RAW_TAGS" is the table created from scratch inside folder "RAW"
-- "MOVIELENS" is the database name
-- "RAW" is the folder inside database "MOVIELENS"
-- "RAW_TAGS" is the table created from scratch inside folder "RAW"

WITH raw_tags AS (
  SELECT * FROM MOVIELENS.RAW.RAW_TAGS
)

SELECT
  userID AS user_id,
  movieID AS movie_id,
  tag,
  TO_TIMESTAMP_LTZ(timestamp) AS tag_timestamp
FROM raw_tags
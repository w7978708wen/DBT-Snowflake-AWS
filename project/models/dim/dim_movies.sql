-- "src_movies" CTE takes the output of the DBT model "src_movies" from "src_movies.sql"
-- Then selects everything
-- And store the results as a temporary CTE called "src_movies"
WITH stage_movies AS (
    SELECT * FROM {{ ref('stage_movies') }}
)
 

-- select columns from CTE "src_movies"
-- transformation is applied to some columns:
-- TRIM(tag) removes leading and trailing spaces 
-- INITCAP(...) capitalizes the first letter of each word
SELECT
    movie_id,
    INITCAP(TRIM(title)) AS movie_title,
    --split genre by |
    SPLIT(genre, '|') AS genre_array,
    genre
FROM stage_movies
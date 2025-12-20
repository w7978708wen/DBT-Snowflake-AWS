-- "RAW_MOVIE" is the table created from scratch inside folder "RAW"
-- "MOVIELENS" is the database name
-- "RAW" is the folder inside database "MOVIELENS"
-- "RAW_MOVIE" is the table created from scratch inside folder "RAW"
WITH raw_movies AS(
    SELECT * FROM MOVIELENS.RAW.RAW_MOVIES
    -- Alternatively: SELECT * FROM {{ sources('project', 'r_movies')}}
)
SELECT
    movieID AS movie_id,
    title,
    genre 
FROM raw_movies
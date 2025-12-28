WITH fct_movie_w_tags AS (
    SELECT * FROM {{ ref('dim_movies_w_tags')}}
)

SELECT * FROM fct_movie_w_tags
-- Define this model's configuration if don't want default coniguration 
{{ config(materialized = 'table') }}

-- Create CTE "fct_ratings" which references to the output of DBT model "fct_ratings"
-- Selects everything inside and stores the results as the CTE 
WITH fct_ratings AS (
    SELECT * FROM {{ ref('fct_ratings') }}
),

-- Create CTE "seed_dates" which references to the output of DBT model "fct_ratings"
-- Selects everything inside and stores the results as the CTE 
seed_dates AS (
    SELECT * FROM {{ ref('seed_dates') }}
)

-- Do CASE expression and left join using the 2 CTEs
SELECT 
    f.*,
    CASE
        WHEN d.release_date IS NULL THEN 'unknown'
        ELSE 'known'
    END AS release_info_available
FROM fct_ratings f
LEFT JOIN seed_dates d
ON f.movie_id = d.movie_id
-- references to the created fact table 
fct_genome_scores

-- columns that fct_genome_scores has: 
-- movie_id, tag_id, relevance_score

SELECT
    movie_id,
    tag_id, 
    relevance_score
FROM {{ ref('fct_genome_scores') }}
WHERE relevance_score <= 0
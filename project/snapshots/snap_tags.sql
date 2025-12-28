{% snapshot snap_tags %}

-- Define configuration: create all snapshots to have snapshots schema
-- Create unique_key based on the 3 columns
{{
    config(
        target_schema='snapshots',
        unique_key=['user_id','movie_id','tag'],
        strategy='timestamp',
        updated_at='tag_timestamp',
        invalidate_hard_deletes=True
    )
}}

-- Start of snapshot
-- This is a custom package available inside of dbt: generate surrogate key
-- surrogate key (made up of the 3 columns) is defined as "row_key"
SELECT
{{ dbt_utils.generate_surrogate_key(['user_id','movie_id','tag']) }} AS row_key,
    user_id,
    movie_id,
    tag,
    CAST(tag_timestamp AS TIMESTAMP_NTZ) AS tag_timestamp
FROM {{ ref('stage_tags') }}
LIMIT 100 

{% endsnapshot %}
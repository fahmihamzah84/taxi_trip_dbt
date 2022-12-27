{{ config(materialized='table') }}

WITH ratecode_stg AS(
    SELECT DISTINCT 
        RatecodeID
    FROM {{ ref('stg_yellow_taxi__trip') }}
)

SELECT 
    RatecodeID,
    {{ ratecode_desc('RatecodeID') }} as rate_name
FROM 
    ratecode_stg
WHERE
    RatecodeID IS NOT NULL 
    AND
    cast(RatecodeID as integer) < 7
ORDER BY
    RatecodeID ASC
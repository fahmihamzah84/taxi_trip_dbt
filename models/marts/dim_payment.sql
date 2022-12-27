{{ config(materialized='table') }}

WITH payment_stg AS(
    SELECT DISTINCT 
        payment_type
    FROM {{ ref('stg_yellow_taxi__trip') }}
)

SELECT 
    payment_type,
    {{ payment_type_desc('payment_type') }} as method_payment
FROM 
    payment_stg
WHERE
    payment_type IS NOT NULL
ORDER BY
    payment_type ASC
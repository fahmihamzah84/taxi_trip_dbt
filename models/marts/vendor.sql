{{ config(materialized='table') }}

with source_data as (

    select VendorID, EXTRACT(MONTH FROM tpep_pickup_datetime) AS date, 
    {{payment_type_desc ('payment_type') }} as payment_type, SUM (total_amount) as total
    from {{ref ('stg_yellow_taxi__trip')}}
    group by VendorID, date, payment_type
)

SELECT
    VendorID, date AS month,
    ARRAY_AGG(
    STRUCT(payment_type, total)
ORDER BY VendorID, date ASC
) AS monthly
FROM
source_data
GROUP BY VendorID, date
ORDER BY VendorID, date ASC


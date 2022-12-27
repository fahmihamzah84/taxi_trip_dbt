{{ config(materialized='table') }}

WITH vendor_stg AS(
    SELECT DISTINCT 
        VendorID
    FROM {{ ref('stg_yellow_taxi__trip') }}
)

SELECT
    VendorID,
    {{ vendor_desc('VendorID') }} as vendor_name,
FROM 
    vendor_stg


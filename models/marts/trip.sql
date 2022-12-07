{{ config(materialized='table') }}

with source_data as (
    select * 
    from {{ref ('stg_yellow_taxi__trip')}}
),
the_zone as (
    select LocationID, zone
    from {{ref ('stg_yellow_taxi__zone_lookup')}}
)
select fhoffa.x.random_int(0,100000000) as trip_id, VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, z1.zone AS pickup_zone , z2.zone AS dropoff_zone, {{payment_type_desc ('payment_type') }} as payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
from source_data
join the_zone as z1 
on source_data.PULocationID = z1.LocationID
join the_zone as z2
on source_data.DOLocationID = z2.LocationID

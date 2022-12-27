{{ config(materialized='table') }}

with source_data as (
    select *
    from {{ref ('stg_yellow_taxi__trip')}}
    WHERE
        RatecodeID IS NOT NULL 
        AND
        cast(RatecodeID as integer) < 7
),
select {{ dbt_utils.generate_surrogate_key(['VendorID', 'tpep_pickup_datetime', 'PULocationID', 'DOLocationID', 'RatecodeID']) }} as tripId,
        tpep_pickup_datetime as pickup_datetime,
        tpep_dropoff_datetime as dropoff_datetime,
        PULocationID,
        dzp.borough AS PickupBorough,
        dzp.zone AS PickupZone,
        DOLocationID,
        dzd.borough AS DropBorough,
        dzd.zone AS DropZone,
        store_and_fwd_flag,
        dv.vendor_name as Vendor,
        dr.rate_name AS Ratecode,
        dp.method_payment as Payment,
        passenger_count,
        trip_distance,
        fare_amount,
        total_amount
from source_data AS sd
left join {{ref ('dim_vendor')}} AS dv
ON dv.VendorID = sd.VendorID
left join {{ref ('dim_payment')}} AS dp
ON dp.payment_type = sd.payment_type
left join {{ref ('dim_ratecode')}} AS dr
ON dr.RatecodeID = sd.RatecodeID
left join {{ref ('dim_zone')}} AS dzp
ON dzp.LocationID = sd.PULocationID
left join {{ref ('dim_zone')}} AS dzp
ON dzp.LocationID = sd.DOLocationID


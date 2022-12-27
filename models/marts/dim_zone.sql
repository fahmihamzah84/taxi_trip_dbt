{{ config(materialized='table') }}

with the_zone as (

    select *
    from {{ref ('taxi_zone_lookup')}}
),

pull_up as (
    select z.borough, z.zone, z.LocationID, PULocationID, count(tpep_pickup_datetime) AS as_station_to_pull,
    avg(trip_distance) AS distance_from_pull_up
    from {{ref ('stg_yellow_taxi__trip')}} as p
    join the_zone as z
    on p.PULocationID = z.LocationID
    group by z.borough, z.zone, PULocationID, z.LocationID
),
drop_off as (
    select z.borough, z.zone, DOLocationID, count(tpep_dropoff_datetime)AS as_station_to_drop,
    avg(trip_distance) AS distance_to_drop
    from {{ref ('stg_yellow_taxi__trip')}} as d
    join the_zone as z
    on d.DOLocationID = z.LocationID
    group by z.borough, z.zone, DOLocationID
)

select z.LocationID, p.borough, p.zone, as_station_to_pull, as_station_to_drop, distance_from_pull_up, distance_to_drop
from pull_up as p
left join drop_off
on LocationID = DOLocationID
left join the_zone as z
on z.LocationID = p.LocationID
ORDER BY p.borough, p.zone




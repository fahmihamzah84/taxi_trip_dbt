with unioned as (
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-01`
    union all
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-02`
        union all
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-03`
    union all
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-04`
        union all
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-05`
    union all
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-06`
        union all
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-07`
    union all
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-08`
        union all
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-09`
    union all
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-10`
        union all
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-11`
    union all
    select VendorID, tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, PULocationID, DOLocationID, payment_type,
           fare_amount, tip_amount, tolls_amount, improvement_surcharge,
           total_amount
    from `yellow_taxi.yellow_tripdata_2019-12`
)
select *
from unioned
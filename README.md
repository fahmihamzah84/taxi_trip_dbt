<<<<<<< HEAD
# New York Yellow Taxi Trip Data Transformation dbt

Prerequisites: 

 - [Dataset](https://www.kaggle.com/datasets/microize/newyork-yellow-taxi-trip-data-2020-2019?resource=download) or [Dataset ](https://www1.nyc.gov/site/tlc/about/tlc-trip-record-data.page)
 - [dbt](https://docs.getdbt.com/docs/get-started/installation)
 - [GCP Account](https://github.com/fahmihamzah84/OnlinePaymentFraud-LambdaArchitecture/blob/master/startup/gcp.md)

## Setup

- After you install dbt, you can feed your `project-id`, `google-credentials.json` path on this [file](.dbt/profiles.yml)
- You can download & install needed packages using this command:
```bash
dbt deps
```
- Run all models with
```bash
dbt run
```
- or Run your selected model
```bash
dbt run --select <your-model>
```

In this projects there are several tests using dbt
     
     On the travel table
     trip_id column has 2 tests:
    
        1. Unique, for make sure all columns are not duplicate
        2. Not null, so all data can be identified
   
     the payment type column has 1 test:
     
        1. Accepted Value, so I can find out if there is a type of payment that is not recognized
     
     the pullup_zone and dropoff_zone columns have 1 test:
     
        1. Relation, so I can be sure both columns refer to the zone column in the zone_lookup table

     the ratecode columns have 1 test :

        1. Accepted Value, so I can find out if there is a type of payment that is not recognized

### Here's the lineage:
![DimensionalModelling](/images/lineage.png)
=======
Pada dataset taxi trip ini terdapat beberapa test menggunakan dbt
Pada tabel trip
  
   kolom trip_id memiliki 2 test:
    
      1. Unique, untuk memastikan semua kolom tidak duplikat
      2. Not null, agar semua data bisa diidentifikasi keberadaanya
   
   kolom payment type memiliki 1 test:
     
      1. Accepted Value, agar kita bisa mengetahui jika terdapat payment type yang tidak sesuai dengan yang kita sudah tentukan
     
   kolom pullup_zone dan dropoff_zone memiliki 1 test:
     
      1. Relationship, agar kita bisa yakin bahwa kedua kolom tersebut me'refer' ke kolom zone pada tabel zone_lookup
>>>>>>> 9a2c76037cc69189c718053a6e8ff7d5d22080e2

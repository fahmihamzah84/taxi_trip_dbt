Pada dataset taxi trip ini terdapat beberapa test menggunakan dbt,
  Pada tabel trip,
  
    kolom trip_id memiliki 2 test:
    
      1. Unique, untuk memastikan semua kolom tidak duplikat
      2. Not null, agar semua data bisa diidentifikasi keberadaanya
     kolom payment type memiliki 1 test:
     
      1. Accepted Value, agar kita bisa mengetahui jika terdapat payment type yang tidak sesuai dengan yang kita sudah tentukan
     kolom pullup_zone dan dropoff_zone memiliki 1 test:
     
      1. Relationship, agar kita bisa yakin bahwa kedua kolom tersebut me'refer' ke kolom zone pada tabel zone_lookup

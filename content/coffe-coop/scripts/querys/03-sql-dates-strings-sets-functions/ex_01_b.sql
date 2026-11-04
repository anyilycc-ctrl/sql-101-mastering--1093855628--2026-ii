--  Exercise 01 -b
--  top 10 de asociados más antiguos del municipio 54518 con su antigüedad al 30 de septiembre de 2026  y, en otra columna los años de  antigüedad


    SELECT 
        T1.first_name,
        T1.last_name, 
        AGE('2026-09-30',T1.membership_date) AS membership_age,
        DATE_PART('year',AGE('2026-09-30',T1.membership_date)) AS membership_year
    FROM farm.farmers T1
    WHERE municipality_code ='54518'
    ORDER BY 3 
    LIMIT 10;

/**
   first_name    |    last_name     |     membership_age     | membership_year
-----------------+------------------+------------------------+-----------------
 Luz             | Niño Guerrero    | 5 years 3 mons 10 days |               5
 Ricardo         | Castro Contreras | 5 years 3 mons 12 days |               5
 Andrés Emilio   | Valencia Parra   | 5 years 3 mons 13 days |               5
 Javier          | Burbano Molina   | 5 years 3 mons 21 days |               5
 Gloria          | Tovar Benavides  | 5 years 4 mons 14 days |               5
 Daniela         | Lozano Castro    | 5 years 4 mons 26 days |               5
 Hernando Miguel | Jiménez Restrepo | 5 years 4 mons 28 days |               5
 Dora Lucía      | Uribe Arango     | 5 years 5 mons 12 days |               5
 Mauricio        | Peña Bastidas    | 5 years 6 mons 9 days  |               5
 Ruth            | Jiménez Guerrero | 5 years 6 mons 11 days |               5
(10 filas)
**/
-- Exercise 02 -a
-- El top 10 de asociados de mayor edad del municipio 54518

SELECT 
    T1.first_name,
    T1.last_name,
    T1.birth_date,
    DATE_PART('year',AGE('2026-09-30',T1.birth_date)) AS age_years
FROM farm.farmers T1
WHERE municipality_code='54518'
ORDER BY 4 DESC
LIMIT 10;

/**
  first_name   |     last_name      | birth_date | age_years
---------------+--------------------+------------+-----------
 Adriana       | Mosquera Ospina    | 1950-08-13 |        76
 Felipe Camilo | Ríos Ospina        | 1950-03-09 |        76
 Elsa          | Ramos Cárdenas     | 1950-01-11 |        76
 Arturo        | Contreras Peña     | 1950-08-18 |        76
 Antonio       | Bastidas Rodríguez | 1950-10-02 |        75
 Rosa          | Ríos Cárdenas      | 1951-08-26 |        75
 Gustavo       | Mosquera López     | 1951-06-05 |        75
 Diana         | Díaz Medina        | 1951-07-19 |        75
 Édgar         | Burbano Arango     | 1951-05-23 |        75
 Inés Lucía    | Díaz Cuéllar       | 1952-05-26 |        74
(10 filas)
**/
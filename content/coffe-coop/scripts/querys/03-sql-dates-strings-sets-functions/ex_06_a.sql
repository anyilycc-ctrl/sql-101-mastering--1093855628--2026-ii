-- Exercise 06 --b
-- Asociadas 'F' del municipio 54518 con su nombre y el telefono

 SELECT
    CONCAT(SUBSTRING(T1.first_name,1,1),' . ',T1.last_Name) AS short_name,
    T1.phone_number  AS phone
 FROM farm.farmers T1
 WHERE T1.gender='F'
    AND T1.municipality_code='54518'
    ORDER BY T1.last_Name,T1.first_name;
/**
     short_name       |   phone
-----------------------+------------
 M . Agudelo Sandoval  | 3242280898
 E . Álvarez Bonilla   | 3236902029
 R . Álvarez Cárdenas  | 3047898372
 M . Álvarez Carrillo  | 3059237130
 M . Álvarez Correa    | 3232410671
 M . Arango Narváez    | 3178267449
 E . Arias Álvarez     | 3213658326
 V . Arias Ramírez     | 3204850778
 I . Barrera Cabrera   | 3041744702
 M . Barrera Correa    | 3126485460
 A . Bastidas Chamorro | 3023807439
 M . Bastidas Medina   | 3508652479
 R . Bastidas Suárez   | 3015208796
 M . Benavides Delgado | 3229418470
 Y . Bermúdez Henao    | 3141005257
 M . Burbano Duarte    | 3183590387
 J . Burbano Jaimes    | 3202058604
 (111 filas)
 **/

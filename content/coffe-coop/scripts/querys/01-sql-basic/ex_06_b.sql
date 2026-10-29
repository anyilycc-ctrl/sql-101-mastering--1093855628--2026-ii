--Exercise 06-b
-- Nos muestra los farmers que no tienen correo electrónico registrado.

SELECT *FROM farm.farmers
WHERE  municipality_code = '54518'  AND email IS NULL;

/**
 farmer_id | document_number |    first_name    |     last_name      | birth_date | gender | phone_number | email | membership_date | is_active | municipality_code
-----------+-----------------+------------------+--------------------+------------+--------+--------------+-------+-----------------+-----------+-------------------
       775 | 712758473       | Wilson           | López Villamizar   | 1996-04-26 | M      | 3055094275   |       | 2016-02-19      | t         | 54518
      2716 | 727945493       | Gloria           | Marín Rivera       | 1975-06-11 | O      | 3225571567   |       | 2021-01-28      | t         | 54518
      3739 | 549054771       | María            | Burbano Duarte     | 1964-08-24 | F      | 3183590387   |       | 2004-09-23      | t         | 54518
      7898 | 24999630        | Esperanza        | Romero Betancur    | 1955-08-11 | F      | 3029623613   |       | 2015-08-30      | t         | 54518
      8485 | 914044314       | Ancízar Cristian | Polanía Delgado    | 1997-04-18 | M      | 3028825809   |       | 2021-02-24      | f         | 54518
     10999 | 343256743       | Dora             | Hernández Correa   | 1952-12-18 | F      | 3166719225   |       | 2014-03-08      | t         | 54518
     12711 | 1148351420      | Inés             | Jiménez Jaimes     | 1966-09-14 | F      | 3104090231   |       | 2008-02-11      | t         | 54518
     14977 | 1117597835      | Cecilia Lorena   | Díaz García        | 1953-09-22 | F      | 3207660684   |       | 2017-01-11      | f         | 54518
     20108 | 749444168       | Emilio           | Delgado Molina     | 1992-02-05 | M      | 3118015821   |       | 2016-03-11      | t         | 54518
     20979 | 940051048       | David Germán     | Romero Bonilla     | 1980-09-08 | M      | 3018117176   |       | 2002-10-11      | t         | 54518
     23558 | 548464915       | Yuliana          | Rodríguez Vargas   | 1969-09-27 | F      | 3173571208   |       | 2019-11-10      | t         | 54518
     24758 | 554620706       | Nelson Samuel    | Mejía Vera         | 1990-04-08 | M      | 3022063857   |       | 2010-03-14      | t         | 54518
     26035 | 59388780        | Juan             | Ortega Zapata      | 1968-04-18 | M      | 3217129169   |       | 1997-07-13      | t         | 54518
     26952 | 1171130241      | Elsa             | Mejía Vera         | 1998-06-21 | F      | 3019766136   |       | 2020-07-24      | t         | 54518
     28126 | 824422301       | Hernando         | Montoya Agudelo    | 1979-06-06 | M      | 3218003724   |       | 2001-07-22      | t         | 54518
     29185 | 21358854        | Manuela Yolanda  | Benavides Delgado  | 1970-05-25 | F      | 3229418470   |       | 2011-02-27      | t         | 54518
      
    (65 filas)
  /**
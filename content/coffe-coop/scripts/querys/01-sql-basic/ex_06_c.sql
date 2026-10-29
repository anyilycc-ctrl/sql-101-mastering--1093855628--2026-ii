--Exercise 06 - c
-- nos muestra los que estan asociados del municipio 54518 cuya membresıa este inactiva, ordenados por fecha de afiliacion del mas antiguo al mas reciente

SELECT *FROM farm.farmers
WHERE municipality_code = '54518' AND is_active=FALSE
ORDER BY membership_date;

/**
 farmer_id | document_number |    first_name    |     last_name      | birth_date | gender | phone_number |                email                | membership_date | is_active | municipality_code
-----------+-----------------+------------------+--------------------+------------+--------+--------------+-------------------------------------+-----------------+-----------+-------------------
     99920 | 230971064       | Manuel           | Agudelo Jiménez    | 1970-06-03 | M      | 3219718862   | manuel.agudelo99920@hotmail.com     | 1997-03-29      | f         | 54518
    111416 | 534023693       | Myriam           | Valencia Moreno    | 1962-04-04 | F      | 3241389451   | myriam.valencia111416@gmail.com     | 1998-11-03      | f         | 54518
     53823 | 33787285        | Rubén            | Ramos Chamorro     | 1978-12-05 | M      | 3244273375   |                                     | 1999-03-02      | f         | 54518
     42933 | 1135293825      | Abelardo         | Pérez Castro       | 1976-12-13 | M      | 3245612074   |                                     | 2003-06-19      | f         | 54518
     94576 | 478755763       | Nicolás          | Rivera Duque       | 1952-03-06 | M      | 3029310183   | nicolas.rivera94576@gmail.com       | 2003-08-11      | f         | 54518
    111147 | 160538872       | Liliana          | Mosquera Uribe     | 1969-12-23 | F      | 3119365364   |                                     | 2007-09-27      | f         | 54518
     22657 | 223974138       | Rodrigo Nelson   | Cabrera Villamizar | 1978-02-28 | M      | 3502554241   | rodrigo.cabrera22657@outlook.com    | 2009-05-02      | f         | 54518
     25949 | 10424994        | Cristian         | Herrera Zuluaga    | 1988-03-24 | M      | 3242295228   | cristian.herrera25949@yahoo.com     | 2010-04-28      | f         | 54518
    113393 | 1015411133      | Santiago         | Bermúdez Ruiz      | 1977-08-22 | M      | 3003993000   |                                     | 2010-11-30      | f         | 54518
     66985 | 1090968710      | Ruth             | Rodríguez Pérez    | 1992-04-13 | F      | 3021808053   |                                     | 2010-12-11      | f         | 54518
     11941 | 974842644       | Arturo           | Hernández Uribe    | 1963-11-11 | M      | 3058169707   | arturo.hernandez11941@gmail.com     | 2012-06-16      | f         | 54518
     24741 | 1001030458      | Liliana Luisa    | Chamorro Vélez     | 1985-05-07 | F      | 3002682380   | liliana.chamorro24741@gmail.com     | 2013-01-09      | f         | 54518
      2501 | 870240973       | Jairo            | Molina Pabón       | 1969-09-12 | M      | 3018237329   | jairo.molina2501@hotmail.com        | 2014-03-13      | f         | 54518
    142458 | 89157555        | Heriberto        | Jiménez Cáceres    | 1987-04-27 | M      | 3164266457   | heriberto.jimenez142458@outlook.com | 2014-07-17      | f         | 54518
     18100 | 333176982       | Edilma           | Rivera Rivera      | 1996-01-22 | F      | 3126087263   | edilma.rivera18100@gmail.com        | 2014-12-20      | f         | 54518
     31529 | 587550249       | Gustavo          | Mosquera López     | 1951-06-05 | M      | 3119000149   | gustavo.mosquera31529@hotmail.com   | 2016-05-14      | f         | 54518
    134817 | 718906996       | Nelson           | Bedoya Vélez       | 1995-11-29 | M      | 3194564518   |                                     | 2016-12-09      | f         | 54518
     14977 | 1117597835      | Cecilia Lorena   | Díaz García        | 1953-09-22 | F      | 3207660684   |                                     | 2017-01-11      | f         | 54518
     52384 | 599185252       | Efraín           | Pinzón Cabrera     | 1954-08-12 | M      | 3216450755   |                                     | 2017-07-23      | f         | 54518
    138719 | 135734682       | Diego            | Rivera Jiménez     | 1986-01-26 | M      | 3508307641   | diego.rivera138719@gmail.com        | 2018-03-26      | f         | 54518
      8485 | 914044314       | Ancízar Cristian | Polanía Delgado    | 1997-04-18 | M      | 3028825809   |                                     | 2021-02-24      | f         | 54518
(21 filas) /**


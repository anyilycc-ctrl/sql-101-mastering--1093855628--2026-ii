-- EXERSICE 07-c
-- fincas del municipio 54518 que no tienen coordenadas geograficas registradas Latitud o longitud nula
-- TABLA A:farm.farms T1

SELECT *FROM farm.farms T1
WHERE T1.municipality_code ='54518'
    AND  (T1.longitude IS NULL or T1.latitude IS NULL);

/**
 farm_id | farmer_id | municipality_code |    farm_name     |    rural_district    | total_area_ha | altitude_masl | latitude | longitude |    registered_at
---------+-----------+-------------------+------------------+----------------------+---------------+---------------+----------+-----------+---------------------
    3904 |      2501 | 54518             | El Recuerdo      | Alto Grande          |          1.47 |          1875 |          |           | 2017-11-29 08:20:29
    4243 |      2716 | 54518             | La Esperanza     | El Palchal           |          1.64 |          1345 |          |           | 2021-02-08 17:28:44
    7001 |      4481 | 54518             | Las Delicias     | Caima                |          1.01 |          1308 |          |           | 2018-11-22 14:58:23
    8213 |      5280 | 54518             | Los Arrayanes    | Cabecera Municipal   |          3.66 |          1452 |          |           | 2017-12-03 11:26:22
    9863 |      6320 | 54518             | El Brillante     | Peñas                |          2.06 |          1274 |          |           | 2020-11-15 09:28:06
   11687 |      7509 | 54518             | El Porvenir      | Fontibón             |          4.75 |          1418 |          |           | 2014-03-09 09:33:03
   12284 |      7898 | 54518             | La Florida       | Peñas                |          1.16 |          1657 |          |           | 2021-01-29 09:33:26
   13216 |      8485 | 54518             | Los Arrayanes    | Navarro              |          1.42 |          1101 |          |           | 2021-09-28 09:53:11
   15110 |      9714 | 54518             | El Guayabo       | San Francisco        |          3.20 |          1718 |          |           | 2012-07-21 11:24:18
   17013 |     10921 | 54518             | El Encanto       | Fontibón             |          0.75 |          1639 |          |           | 2019-06-09 07:43:23
   17126 |     10999 | 54518             | Cafetal Viejo    | San José De Tonchala |          2.44 |          1469 |          |           | 2015-02-08 14:58:54
   17562 |     11280 | 54518             | El Vergel        | Cabecera Municipal   |          5.14 |          1437 |          |           | 2020-12-20 07:05:24
   18593 |     11941 | 54518             | El Higuerón      | Caima                |          2.45 |          1868 |          |           | 2020-04-02 16:22:26
   18594 |     11941 | 54518             | Bella Vista Alta | El Rosal             |          1.03 |          1652 |          |           | 2016-08-20 12:14:18
   19288 |     12378 | 54518             | El Horizonte     | San José De Tonchala |          0.79 |          1415 |          |           | 2018-09-16 14:48:46
   19289 |     12378 | 54518             | La Esperanza     | Peñas                |          2.05 |          1679 |          |           | 2016-02-08 15:50:52
   20017 |     12858 | 54518             | El Mesón         | Iscaligua            |          2.80 |          1840 |          |           | 2018-07-30 13:38:19
   20635 |     13262 | 54518             | Las Mercedes     | Llano Castro         |          2.73 |          1942 |          |           | 2021-04-26 16:47:12
   20637 |     13262 | 54518             | Las Orquídeas    | Sabaneta Baja        |          0.78 |          2152 |          |           | 2021-06-10 07:27:21
   25360 |     16365 | 54518             | La Unión         | La Legua             |          2.74 |          1826 |          |           | 2019-12-11 14:11:54
   28002 |     18100 | 54518             | San Antonio      | Jurado               |          1.64 |          1422 |          |           | 2017-06-19 13:18:42
   31281 |     20195 | 54518             | San Luis         | Sabaneta Alta        |          1.06 |          1584 |          |           | 2003-09-22 10:33:54
    (153 filas)
**/


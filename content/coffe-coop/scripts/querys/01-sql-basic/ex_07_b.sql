-- Exersice 07-b
--fincas con altitud entre 1600 y 1800 m.s.n.m  ordenadas por vereda asc ,por area descendente del municipio 54518 
-- Tabla A : farm.farms T1

SELECT *FROM farm.farms T1
WHERE T1.municipality_code = '54518'
    AND T1.altitude_masl BETWEEN 1600 AND 1800
ORDER BY T1.rural_district, T1.total_area_ha DESC;


/**
 farm_id | farmer_id | municipality_code |    farm_name     |    rural_district    | total_area_ha | altitude_masl | latitude | longitude  |    registered_at
---------+-----------+-------------------+------------------+----------------------+---------------+---------------+----------+------------+---------------------
  123713 |     79656 | 54518             | Los Pinos        | Alcaparral           |          1.67 |          1771 |          |            | 2017-01-16 15:53:24
  135683 |     87442 | 54518             | Miraflores       | Alcaparral           |          1.29 |          1636 |          |            | 2021-12-26 07:45:34
  220768 |    142523 | 54518             | Monteverde       | Alto Grande          |          2.59 |          1794 | 8.270950 | -72.601354 | 2011-05-25 12:18:39
  106381 |     68437 | 54518             | La Loma          | Alto Grande          |          2.09 |          1667 | 7.760726 | -73.032128 | 2021-08-23 13:04:30
  162550 |    104763 | 54518             | Bellavista       | Alto Grande          |          1.80 |          1704 |          |            | 2017-01-20 07:52:05
  172543 |    111220 | 54518             | El Refugio       | Alto Grande          |          1.23 |          1661 | 7.945377 | -72.671696 | 1999-03-05 16:30:30
  210481 |    135840 | 54518             | El Jardín        | Cabecera Municipal   |          3.26 |          1620 | 8.219683 | -73.151808 | 2015-04-21 08:19:41
   95792 |     61650 | 54518             | El Edén          | Cabecera Municipal   |          2.89 |          1603 |          |            | 2006-05-21 15:32:21
  204909 |    132229 | 54518             | La Milagrosa     | Cabecera Municipal   |          2.65 |          1643 | 7.673836 | -72.492972 | 2020-04-02 07:52:05
    5849 |      3739 | 54518             | La Divisa        | Cabecera Municipal   |          1.32 |          1765 | 7.322561 | -72.767022 | 2006-05-26 14:29:53
  110738 |     71269 | 54518             | El Recuerdo      | Caima                |          3.12 |          1758 | 8.039498 | -72.905617 | 2021-08-18 14:31:40
  124391 |     80102 | 54518             | El Recreo        | Caima                |          1.33 |          1617 | 8.089498 | -72.511223 | 2019-11-11 16:54:47
   35664 |     23040 | 54518             | La Victoria      | Cunuba               |          1.79 |          1780 | 7.172319 | -72.630340 | 2006-05-24 15:34:12
  168803 |    108845 | 54518             | La Isabela       | Cunuba               |          1.74 |          1663 | 7.830152 | -72.775634 | 2021-03-28 16:40:50
  172851 |    111416 | 54518             | La Palma         | Cunuba               |          1.60 |          1773 |          |            | 2021-10-16 10:38:19
  186797 |    120446 | 54518             | La Gaitana       | Cunuba               |          1.12 |          1659 |          |            | 2018-10-01 16:44:51
  183648 |    118405 | 54518             | El Oasis         | El Alizal            |          2.52 |          1692 |          |            | 2013-04-06 09:08:42
   74343 |     47845 | 54518             | La Argentina     | El Escorial          |          4.41 |          1765 | 7.810510 | -72.583025 | 2021-01-24 16:10:06
   14392 |      9270 | 54518             | El Horizonte     | El Escorial          |          1.68 |          1730 | 7.812065 | -72.702519 | 2008-12-17 09:44:28
  186798 |    120446 | 54518             | El Recuerdo      | El Escorial          |          1.27 |          1619 | 8.056559 | -72.831894 | 2020-09-24 17:17:33
(104 filas)
**/
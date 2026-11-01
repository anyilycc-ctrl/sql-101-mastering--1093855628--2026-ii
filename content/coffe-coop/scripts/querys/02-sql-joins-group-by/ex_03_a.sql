-- Exercise 03 - a
-- Nombre de cada punto de compra con el codigo y el peso bruto de las entregas que recibio el 30 de septiembre de 2026.

-- Tabla A: buy.deliveries T1
-- Tabla B: buy.collection_points T2
-- RIGHT JOIN
-- ON T1.collection_point_id = T2.collection_point_id

SELECT 
    T2.point_name, 
    T2.collection_point_id AS collection_point,
    T1.gross_weight_kg,
    T1.delivered_at AS delivery
FROM buy.deliveries T1
RIGHT JOIN buy.collection_points T2
    ON T1.collection_point_id = T2.collection_point_id
    AND  T1.delivered_at >='2026-09-30'
    AND T1.delivered_at <'2026-10-01';
 

/**

                  point_name                  | collection_point | gross_weight_kg |      delivery
----------------------------------------------+------------------+-----------------+---------------------
 Punto de Compra Jambaló 1                    |               68 |           51.53 | 2026-09-30 06:01:10
 Punto de Compra Salgar 1                     |               48 |          124.98 | 2026-09-30 06:03:32
 Punto de Compra Cajibío 3                    |               80 |          112.33 | 2026-09-30 06:04:40
 Punto de Compra Venecia 1                    |               90 |          138.29 | 2026-09-30 06:07:26
 Punto de Compra El Banco 1                   |               10 |          256.42 | 2026-09-30 06:07:51
 Punto de Compra Convención 1                 |              170 |          139.81 | 2026-09-30 06:11:03
 Punto de Compra Apía 2                       |               57 |          404.97 | 2026-09-30 06:15:25
 Punto de Compra El Tambo 1                   |               53 |          175.92 | 2026-09-30 06:16:53
 Punto de Compra Anserma 1                    |               54 |           56.80 | 2026-09-30 06:17:34
 Punto de Compra San Francisco 1              |               67 |          269.43 | 2026-09-30 06:20:30
 Punto de Compra Miranda 1                    |               24 |          166.55 | 2026-09-30 06:21:43
 Punto de Compra Paratebueno 1                |               59 |           47.86 | 2026-09-30 06:30:33
 Punto de Compra Caldas 1                     |               99 |           47.40 | 2026-09-30 06:30:37
 (338 filas)
 **/

-- Conclucion al utilizar la condicion dentro del ON o dentro de WHILE:
-- si utilizamos la condicion dentro del ON, nos mostrara todos los puntos de compra, aunque no hayan tenido entregas el 30 de septiembre de 2026, 
-- mientras si utilizamos la condicion dentro del WHERE, solo nos mostrara los puntos de compra que si tuvieron entregas el 30 de septiembre de 2026.
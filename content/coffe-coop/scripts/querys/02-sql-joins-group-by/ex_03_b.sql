-- Exercise 03 - b
-- Nombre,codigo y el peso bruto de cada punto de compra que NO recibio entregas el 30 de septiembre de 2026.

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
    AND  T1.delivered_at <'2026-10-01'
    AND T1.delivery_id IS NULL;


/**
                  point_name                  | collection_point | gross_weight_kg | delivery
----------------------------------------------+------------------+-----------------+----------
 Punto de Compra Carmen De Apicalá 1          |                1 |                 |
 Punto de Compra El Playón 1                  |                2 |                 |
 Punto de Compra San Andrés De Tumaco 1       |                3 |                 |
 Punto de Compra Gómez Plata 1                |                4 |                 |
 Punto de Compra Garzón 1                     |                5 |                 |
 Punto de Compra Samaná 1                     |                6 |                 |
 Punto de Compra Sardinata 1                  |                7 |                 |
 Punto de Compra Pacho 1                      |                8 |                 |
 Punto de Compra La Cumbre 1                  |                9 |                 |
 Punto de Compra El Banco 1                   |               10 |                 |
 Punto de Compra Popayán 1                    |               11 |                 |
 Punto de Compra Hatonuevo 1                  |               12 |                 |
 (180 filas) 
 **/

-- Exersice 06 --c
-- De las entregas del 30 de septiembre de 2026 recibidas en el Punto de Compra Bochalema 1, SUBSTRING

-- Table A: buy.deliveries T1
-- Table B: buy.collection_points T2
-- INNER JOIN
-- ON T2.collection_point_id=T1.collection_point_id

SELECT 
    T1.delivery_id AS delivery,
    SUBSTRING(T1.delivery_id,1,3) AS prefix,
    SUBSTRING(T1.delivery_id,5,13) AS date_code,
    SUBSTRING(T1.delivery_id,14,19) AS squence_code,
    T1.delivered_at
FROM buy.deliveries T1
INNER JOIN buy.collection_points T2
    ON T2.collection_point_id=T1.collection_point_id
WHERE   
    T1.delivered_at::date ='2026-09-30'
    AND T2.collection_point_id='163';

/**
     delivery       | prefix |   date_code   | squence_code |    delivered_at
---------------------+--------+---------------+--------------+---------------------
 DLV-20260930-000063 | DLV    | 20260930-0000 | 000063       | 2026-09-30 08:04:43
 DLV-20260930-000077 | DLV    | 20260930-0000 | 000077       | 2026-09-30 08:53:06
 DLV-20260930-000141 | DLV    | 20260930-0001 | 000141       | 2026-09-30 11:11:53
 DLV-20260930-000233 | DLV    | 20260930-0002 | 000233       | 2026-09-30 14:36:39
(4 filas)
**/





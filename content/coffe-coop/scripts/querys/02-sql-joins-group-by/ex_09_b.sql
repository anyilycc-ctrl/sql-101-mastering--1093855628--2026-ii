-- Exercise 09 -b
-- Total de peso bruto por punto de recolección del 30 de septiembre, solo los puntos de recolección con más de 1000 kg de peso bruto, ordenado de mayor a menor.

-- Tabla A: buy.collection_points T1
-- Tabla B: buy.deliveries T2
-- INNER JOIN
-- ON T1.collection_point_id = T2.collection_point_id

SELECT 
    T1.point_name AS collection_point,
    SUM(T2.gross_weight_kg) AS total_gross_kg
FROM buy.collection_points T1
INNER JOIN buy.deliveries T2    
     ON T1.collection_point_id = T2.collection_point_id
 WHERE T2.delivered_at >= '2026-09-30'
   AND T2.delivered_at < '2026-10-01' 
 GROUP BY 1
 HAVING SUM(T2.gross_weight_kg) > 1000
 ORDER BY 2 DESC;

 /**
             collection_point            | total_gross_kg
----------------------------------------+----------------
 Punto de Compra Algeciras 1            |        1093.81
 Punto de Compra Coromoro 1             |        1079.24
 Punto de Compra San Andrés De Tumaco 1 |        1014.27
(3 filas)
**/
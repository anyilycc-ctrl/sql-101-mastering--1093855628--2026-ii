-- Exercise 07 - a
-- Total de entregas, suma de peso bruto, promedio de peso bruto y total de fincas que realizaron entregas el 30 de septiembre de 2026.

-- Tabla A: buy.deliveries T1
SELECT 
    COUNT(*) AS total_deliveries,
    SUM(T1.gross_weight_kg) AS total_gross_kg,
    ROUND (AVG(T1.gross_weight_kg)::numeric,2) AS  avg_gross_kg,
    COUNT(DISTINCT T1.farm_id) AS farms_delivering
FROM buy.deliveries T1
WHERE T1.delivered_at >= '2026-09-30'
  AND T1.delivered_at < '2026-10-01';

  /**
  total_deliveries | total_gross_kg | avg_gross_kg | farms_delivering
------------------+----------------+--------------+------------------
              300 |       52190.96 |       173.97 |              300
(1 fila)
**/


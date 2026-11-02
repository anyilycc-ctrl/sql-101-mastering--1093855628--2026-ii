-- Exercise 08 - b
-- Total de entregas y suma de peso bruto por tipo de cafe del 30 de septiembre ordenado de mayor a menor por peso bruto.

-- Tabla A: buy.deliveries T1

SELECT 
    T1.coffee_type,
    COUNT(*) AS deliveres_count,
    SUM(T1.gross_weight_kg) AS total_gross_KG
FROM buy.deliveries T1
WHERE T1.delivered_at >= '2026-09-30'
  AND T1.delivered_at < '2026-10-01'
GROUP BY T1.coffee_type
ORDER BY total_gross_KG DESC;

/**
  coffee_type  | deliveres_count | total_gross_kg
---------------+-----------------+----------------
 dry_parchment |             278 |       48246.55
 cherry        |              10 |        2053.16
 wet_parchment |              12 |        1891.25
(3 filas)
 **/
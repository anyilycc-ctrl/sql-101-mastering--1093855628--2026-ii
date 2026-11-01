-- Exercise 07 - b
-- Minimo, maximo y promedio del puntaje de taza y minimo y maximo de humedad de las entregas analizadas el 30 de septiembre de 2026.

-- Tabla A: buy.quality_analyses T1


SELECT MIN(T1.cup_score) AS min_cup_score,
       MAX(T1.cup_score) AS max_cup_score,
       AVG(T1.cup_score) AS avg_cup_score,
       MIN(moisture_pct) AS min_moisture_pct,
       MAX(moisture_pct) AS max_moisture_pct

FROM buy.quality_analyses T1
WHERE T1.analyzed_at >= '2026-09-30'
  AND T1.analyzed_at < '2026-10-01';

/**
 min_cup_score | max_cup_score |    avg_cup_score    | min_moisture_pct | max_moisture_pct
---------------+---------------+---------------------+------------------+------------------
         77.17 |         87.28 | 82.9051785714285714 |             8.39 |            17.68
(1 fila)
 **/
-- Exercise 09 -c
-- consulta las fincas (por nombre) con al menos 3 analisis y un puntaje en taza promedio mayor o igual a 84

-- Table A: buy.quality_analyses T1 
-- Table B: buy.deliveries T2
-- LEFT JOIN
-- ON T1.delivery_id = T2.delivery_id
-- Table C: farm.farms T3 
-- INNER JOIN
-- T2.farm_id = T3.farm_id

SELECT 
    T3.farm_name AS farm,
    COUNT(*) AS analyses_count,
    ROUND(AVG(T1.cup_score)::numeric,2) AS avg_cup_score
FROM buy.quality_analyses T1 
LEFT JOIN buy.deliveries T2
    ON T1.delivery_id = T2.delivery_id 
    AND T1.is_accepted = TRUE
INNER JOIN farm.farms T3 
    ON T2.farm_id = T3.farm_id
GROUP BY T3.farm_id 
HAVING  COUNT(*)>=3 
    AND ROUND(AVG(T1.cup_score)::numeric,2) >= 84
ORDER BY 3 DESC;

/**
       farm       | analisis_count | avg_cup_score
------------------+----------------+---------------
 El Porvenir      |              5 |         90.00
 La Selva         |              4 |         90.00
 Monte Alto       |              3 |         90.00
 La Cabaña        |              5 |         90.00
 El Tesoro        |              3 |         90.00
 El Cedro         |              5 |         90.00
 Las Orquídeas    |              5 |         90.00
 El Recreo        |              3 |         90.00
 Monteverde       |              4 |         90.00
 El Arrayán       |              3 |         90.00
 La Selva         |              3 |         90.00
 Santa Elena      |              3 |         90.00
 La Loma          |              3 |         90.00
 El Caney         |              8 |         90.00
 Santa Clara      |              3 |         90.00
 El Mango         |              6 |         90.00
 Monteverde       |              4 |         90.00
 El Bosque        |              4 |         90.00
 El Guamo         |              3 |         90.00
 El Triunfo       |              4 |         90.00 
(23273 filas)
 **/




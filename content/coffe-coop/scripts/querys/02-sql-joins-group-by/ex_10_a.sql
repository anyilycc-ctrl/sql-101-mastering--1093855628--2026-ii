-- Exercise 10 -a
-- Nos muestra por cada caficultor (documento, nombres y apellidos), el numero de liquidaciones y el valor neto total liquidado por las entregas de septiembre 2026 de mayor a menor

-- Table A: farm.farmers T1
-- Table B:farm.farms T2
-- INNER JOIN
-- T1.farmer_id=T2.farmer_id
-- Table C: buy.deliveries T3
-- INNER JOIN
-- T3.farm_id =T2.farm_id
-- Table D:pay.settlements T4
-- INNER JOIN
-- T4.delivery_id=T3.delivery_id

SELECT 
    T1.document_number AS document,
    T1.first_name,
    T1.last_name,
    COUNT(*) AS settlements_count, 
    SUM(T4.net_weight_kg*T4.price_per_kg_applied) AS total_net_cop
FROM farm.farmers T1
INNER JOIN farm.farms T2
    ON T1.farmer_id=T2.farmer_id
INNER JOIN buy.deliveries T3
    ON T3.farm_id =T2.farm_id
INNER JOIN  pay.settlements T4
    ON T4.delivery_id=T3.delivery_id
WHERE T3.delivered_at>='2026-09-01'
    AND T3.delivered_at<'2026-10-01'
GROUP BY T1.farmer_id
ORDER BY 5 DESC;

/**  
document  |     first_name      |       last_name       | settlements_count | total_net_cop
------------+---------------------+-----------------------+-------------------+---------------
 30933664   | Cristian            | García Contreras      |                 3 | 15888125.9900
 1071161211 | Alba                | Muñoz Ramírez         |                 2 | 15005662.2600
 526195285  | Jairo               | Valencia Zapata       |                 2 | 14727090.4800
 337551898  | Alejandro Mateo     | Flórez Uribe          |                 2 | 14460246.3000
 854161034  | Luisa Martha        | Caicedo Romero        |                 1 | 14092271.4800
 549378351  | Dora                | Galvis Ospina         |                 3 | 13113780.9500
 182907696  | Jorge               | Duarte Zapata         |                 2 | 12918662.5200
 782091682  | Luisa               | Duque Torres          |                 2 | 12843595.7300
 610231611  | Orlando             | Peña Vera             |                 1 | 12630859.4100
 446732017  | Reinaldo            | Ruiz Cuéllar          |                 2 | 12489382.6700
 628772920  | Aura                | Osorio Medina         |                 2 | 12212729.5200
 860889225  | Wilmer              | Barrera Vera          |                 2 | 12161329.3000
 894974935  | Alejandro           | Niño Flórez           |                 2 | 12028800.0700
 329350370  | Rubén               | Quintero Chamorro     |                 3 | 11967062.3900
 1105751836 | Antonio             | Moreno Rojas          |                 3 | 11793314.1500
(6149 filas)
**/
-- Exercise 10 -a
-- lo del inciso a peroque nos muestre el valor neto total liquidado > 5000000

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
HAVING   SUM(T4.net_weight_kg*T4.price_per_kg_applied) >5000000
ORDER BY 5 DESC;
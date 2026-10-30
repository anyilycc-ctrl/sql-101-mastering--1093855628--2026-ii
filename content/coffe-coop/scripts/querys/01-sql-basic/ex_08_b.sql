-- Exercise 08- b
-- entregas rechazadas, agregando una columna calculada con el peso promedio 
-- Fiels : delivery_id,status,
-- Tabla A: buy.deliveries T1

SELECT  
    T1.delivery_id,
    T1.status,
    (T1.gross_weight_kg / T1.bag_count)  AS avg_kg_per_bag
FROM buy.deliveries T1 
WHERE T1.delivery_id LIKE '%20260930%' AND T1.status IN ('rejected');

 /**    
      delivery_id     |  status  |   avg_kg_per_bag
---------------------+----------+---------------------
 DLV-20260930-000083 | rejected | 44.9750000000000000
 DLV-20260930-000109 | rejected | 62.3760000000000000
 DLV-20260930-000147 | rejected | 66.4200000000000000
 DLV-20260930-000165 | rejected | 58.0983333333333333
 DLV-20260930-000214 | rejected | 59.2100000000000000
 DLV-20260930-000223 | rejected | 48.3314285714285714
 DLV-20260930-000006 | rejected | 46.6033333333333333
 DLV-20260930-000070 | rejected | 49.0433333333333333
 DLV-20260930-000253 | rejected | 50.6300000000000000
(9 filas)

**/ 
-- Exercise 01 --c
-- codigo de la entrega, el nombre de la finca, el nombre del punto de compra y el peso bruto de las entregas del 30 de septiembre de 2026,ordenadas por punto de compra y luego por peso de mayora menor.

-- Table A : buy.deliveries T1
-- Table B : farm.farms T2
-- INNER JOIN 
-- ON T1.farm_id=T2.farm_id
-- Table C : buy.collection_points T3 
-- INNER JOIN 
-- JOIN buy.collection_points T3 

SELECT 
    T1.delivery_id AS delivery,
    T2.farm_name AS farm,
    T3.point_name AS collection_point,
    T1.gross_weight_kg
FROM buy.deliveries T1
INNER JOIN farm.farms T2
    ON T1.farm_id=T2.farm_id
INNER JOIN buy.collection_points T3 
    ON T1.collection_point_id= T3.collection_point_id
WHERE   T1.delivery_id LIKE '%20260930%'
ORDER BY T3.point_name,T1.gross_weight_kg DESC;

/**
      delivery       |       farm       |               collection_point               | gross_weight_kg
---------------------+------------------+----------------------------------------------+-----------------
 DLV-20260930-000164 | La Divisa        | Punto de Compra Abriaquí 1                   |           48.18
 DLV-20260930-000028 | El Refugio       | Punto de Compra Acevedo 1                    |          258.00
 DLV-20260930-000094 | El Refugio       | Punto de Compra Acevedo 1                    |          246.96
 DLV-20260930-000292 | La Florida       | Punto de Compra Acevedo 1                    |          122.13
 DLV-20260930-000202 | Los Guaduales    | Punto de Compra Agrado 1                     |          246.62
 DLV-20260930-000080 | El Arrayán       | Punto de Compra Agrado 1                     |          120.11
 DLV-20260930-000075 | La Primavera     | Punto de Compra Alcalá 1                     |           61.99
 DLV-20260930-000137 | San Rafael       | Punto de Compra Aldana 1                     |          209.02
 DLV-20260930-000130 | El Refugio       | Punto de Compra Algeciras 1                  |          290.55
 DLV-20260930-000246 | Los Alpes        | Punto de Compra Algeciras 1                  |          247.42
 DLV-20260930-000249 | La Montaña       | Punto de Compra Algeciras 1                  |          244.21
 DLV-20260930-000286 | Las Acacias      | Punto de Compra Algeciras 1                  |          194.68
 DLV-20260930-000087 | La Floresta      | Punto de Compra Algeciras 1                  |          116.95
 (300 filas)
 **/

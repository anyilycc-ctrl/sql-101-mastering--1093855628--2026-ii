-- Exercise 08 --c 
-- el nombre y la vereda de las fincas del municipio 54518 que entregaron café en 2025 pero no en 2026

-- Table A: farm.farms AS T1
-- Table B: buy.deliveries T2
-- INNER JOIN
--    ON T1.farm_id=T2.farm_id

SELECT 
    T1.farm_name AS farm ,
    T1.rural_district
FROM farm.farms AS T1
INNER JOIN buy.deliveries T2
    ON T1.farm_id=T2.farm_id
WHERE T1.municipality_code='54518'
    AND EXTRACT(year FROM T2.delivered_at)=2025
EXCEPT
SELECT 
    T1.farm_name AS farm ,
    T1.rural_district
FROM farm.farms AS T1
INNER JOIN buy.deliveries T2
    ON T1.farm_id=T2.farm_id
WHERE T1.municipality_code='54518'
    AND EXTRACT(year FROM T2.delivered_at)=2026
ORDER BY farm,2;

/**
     farm      |    rural_district
---------------+----------------------
 Agua Bonita   | García
 Altamira      | El Alizal
 Bellavista    | Cunuba
 Cafetal Viejo | Caima
 Cafetal Viejo | Cunuba
 Cafetal Viejo | San José De Tonchala
 El Arrayán    | Iscaligua
 El Brillante  | Peñas
 El Diamante   | San José De Tonchala
 El Encanto    | Cunuba
 El Guamo      | Fontibón
 El Guayabo    | Caima
 El Guayabo    | El Rosal
 El Higuerón   | Caima
 El Higuerón   | La ┌Pa
 El Horizonte  | El Totumo
 El Horizonte  | Tampanqueba
 (79 filas)
 **/
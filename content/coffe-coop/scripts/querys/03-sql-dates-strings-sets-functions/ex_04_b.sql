-- Exercise 04 --b
-- De las fincas del municipio 54518, consulte las certificaciones vigentes con 2 años o más al 30 de septiembre de 2026

SELECT 
    T1.farm_name AS farm,
    T3.certification_name AS certification,
    T2.start_date,
    EXTRACT(YEAR FROM AGE( '2026-09-30',T2.start_date)) AS years_active
FROM farm.farms T1
INNER JOIN farm.farm_certifications T2
    ON T1.farm_id = T2.farm_id
 INNER JOIN farm.certifications T3
    ON T2.certification_id =T3.certification_id
WHERE T2.end_date IS NULL
    AND EXTRACT(YEAR FROM AGE( '2026-09-30',T2.start_date))>=2  
ORDER BY 3 ,1 ;

/**
       farm       |    certification    | start_date | years_active
------------------+---------------------+------------+--------------
 Buenavista       | Rainforest Alliance | 2023-10-01 |            2
 El Guayabo       | Fairtrade           | 2023-10-01 |            2
 El Higuerón      | Orgánico            | 2023-10-01 |            2
 El Refugio       | Fairtrade           | 2023-10-01 |            2
 El Silencio      | Rainforest Alliance | 2023-10-01 |            2
 La Aurora        | Nespresso AAA       | 2023-10-01 |            2
 La Carolina      | Fairtrade           | 2023-10-01 |            2
 La Esperanza     | Orgánico            | 2023-10-01 |            2
 La Isabela       | Rainforest Alliance | 2023-10-01 |            2
 La Loma          | Fairtrade           | 2023-10-01 |            2
 La Palma         | Rainforest Alliance | 2023-10-01 |            2
 La Quebrada      | 4C                  | 2023-10-01 |            2
 La Siberia       | 4C                  | 2023-10-01 |            2
 La Siberia       | Fairtrade           | 2023-10-01 |            2
 La Unión         | Fairtrade           | 2023-10-01 |            2
 Las Acacias      | Fairtrade           | 2023-10-01 |            2
 Las Brisas       | Bird Friendly       | 2023-10-01 |            2
(11461 filas)
**/
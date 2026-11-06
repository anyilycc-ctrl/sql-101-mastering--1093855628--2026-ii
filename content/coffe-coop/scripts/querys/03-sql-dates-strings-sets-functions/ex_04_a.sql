-- Exercise 04 -a
-- De las fincas del municipio 54518, consulte el top 10 de periodos de certicación ya cerrados (end_date no nula) de mayor duración

-- Table A: farm.farms T1
-- Table B: farm.farm_certifications T2
-- INNER JOIN
--    ON T1.farm_id = T2.farm_id
-- Tablec C:farm.certifications T3
--    ON T2.certification_id =T3.certification_id

SELECT 
    T1.farm_name AS farm,
    T3.certification_name AS certification,
    T2.start_date,
    T2.end_date,
    EXTRACT(EPOCH FROM AGE(T2.end_date,T2.start_date)/3600) AS duration_days,
    AGE(T2.end_date,T2.start_date) AS duration
FROM farm.farms T1
INNER JOIN farm.farm_certifications T2
    ON T1.farm_id = T2.farm_id
INNER JOIN farm.certifications T3
    ON T2.certification_id =T3.certification_id
WHERE T1.municipality_code='54518'
    AND T2.end_date IS NOT NULL
ORDER BY 5 DESC
LIMIT 10;

/**
     farm     |    certification    | start_date |  end_date  | duration_days | duration
--------------+---------------------+------------+------------+---------------+----------
 La Esperanza | Fairtrade           | 2020-04-07 | 2023-04-07 |  25920.000000 | 3 years
 La Esperanza | Fairtrade           | 2023-04-23 | 2026-04-23 |  25920.000000 | 3 years
 La Esperanza | 4C                  | 2017-12-25 | 2020-12-25 |  25920.000000 | 3 years
 La Esperanza | 4C                  | 2021-01-23 | 2024-01-23 |  25920.000000 | 3 years
 Las Delicias | Rainforest Alliance | 2016-02-09 | 2019-02-09 |  25920.000000 | 3 years
 Las Delicias | 4C                  | 2018-12-29 | 2021-12-29 |  25920.000000 | 3 years
 Las Delicias | 4C                  | 2022-02-01 | 2025-02-01 |  25920.000000 | 3 years
 La Cascada   | Nespresso AAA       | 2018-03-14 | 2021-03-14 |  25920.000000 | 3 years
 El Guayabo   | Orgánico            | 2016-09-15 | 2019-09-15 |  25920.000000 | 3 years
 La Esperanza | Fairtrade           | 2017-03-17 | 2020-03-17 |  25920.000000 | 3 years
(10 filas)
**/


-- Exercise 02 - c
-- Por cada municipio de Norte de Santander (mostrando su nombre) el número de asociados y la edad promedio en años donde supere los 51 años, ordenados alfabéticamente por municipio

-- Table A: geo.municipalities T1
-- Table B: geo.departments T2
-- INNER JOIN
-- T2.department_code=T1.department_code
-- Table C: farm.farmers T3
-- INNER JOIN
-- T3.municipality_code=T1.municipality_code


SELECT 
    T1.municipality_name AS Municipalities,
    COUNT(*) AS farmers_count,
    ROUND(AVG(DATE_PART('year',AGE(CURRENT_DATE,T3.birth_date)))::numeric,2) AS avg_age_years
FROM geo.municipalities T1
INNER JOIN geo.departments T2
    ON T2.department_code=T1.department_code
INNER JOIN farm.farmers T3
    ON T3.municipality_code=T1.municipality_code
WHERE T2.department_name ILIKE 'norte de santander'
GROUP BY 1,T1.municipality_code
HAVING ROUND(AVG(DATE_PART('year',AGE(CURRENT_DATE,T3.birth_date)))::numeric,2) >51
ORDER BY 1;

/**  municipalities  | farmers_count | avg_age_years
------------------+---------------+---------------
 Arboledas        |           235 |         51.59
 Bochalema        |           224 |         51.68
 Bucarasica       |           188 |         51.61
 Cáchira          |           206 |         51.80
 Cácota           |           222 |         51.85
 Chitagá          |           209 |         51.29
 El Carmen        |           218 |         52.67
 La Esperanza     |           199 |         51.35
 Mutiscua         |           216 |         51.96
 Puerto Santander |           194 |         51.89
 Ragonvalia       |           244 |         51.25
 Sardinata        |           197 |         51.25
 Silos            |           206 |         52.16
(13 filas)
**/
-- Exercise 02 -b
-- Del municipio 54518,Nos muestra  el genero  el número de asociados y la edad promedio en años redondeado

-- Table A :geo.municipalities T1
-- TABLE B:farm.farmers T2
-- INNER JOIN
-- ON T1.municipality_code=T2.municipality_code

SELECT 
    T2.gender AS gender,
    COUNT(*) AS  farmers_count,
    ROUND(AVG(DATE_PART('year',AGE(CURRENT_DATE,T2.birth_date)))::numeric,2) AS avg_age_years
FROM geo.municipalities T1
INNER JOIN farm.farmers T2
    ON T1.municipality_code=T2.municipality_code
WHERE T1.municipality_code='54518'
GROUP BY T2.gender,1;

/**
 gender | farmers_count | avg_age_years
--------+---------------+---------------
 F      |           111 |         49.68
 M      |           115 |         51.37
 O      |             4 |         46.25
(3 filas)
**/

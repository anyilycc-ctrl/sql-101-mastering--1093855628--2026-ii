-- Exercise 08 --a
-- El código y el nombre de los municipios de Norte de Santander que tienen fincas y también punto de compra

-- Table A:geo.municipalities T1
-- Table B:geo.departments T2
-- INNER JOIN
--   ON T1.department_code=T2.department_code
-- Table C:farm.farms T4
-- INNER JOIN 
--    ON T4.municipality_code =T1.municipality_code
-- Table D: uy.collection_points T3
-- INNER JOIN 
--    ON T3.municipality_code =T1.municipality_code

SELECT 
    T1.municipality_code,
    T1.municipality_name AS municipality
FROM geo.municipalities T1
INNER JOIN geo.departments T2
    ON T1.department_code=T2.department_code
INNER JOIN farm.farms T4
    ON T4.municipality_code =T1.municipality_code
WHERE T2.department_name ILIKE 'norte de santander'
INTERSECT
SELECT
    T1.municipality_code, 
    T1.municipality_name
FROM geo.municipalities T1
INNER JOIN geo.departments T2
    ON T1.department_code=T2.department_code
INNER JOIN buy.collection_points T3
    ON T3.municipality_code =T1.municipality_code
WHERE T2.department_name ILIKE 'norte de santander'
ORDER BY 2;

/*  */

/**
 municipality_code | municipality_name
-------------------+-------------------
 54099             | Bochalema
 54172             | Chinácota
 54206             | Convención
 54245             | El Carmen
 54261             | El Zulia
 54347             | Herrán
 54498             | Ocaña
 54720             | Sardinata
(8 filas)
**/


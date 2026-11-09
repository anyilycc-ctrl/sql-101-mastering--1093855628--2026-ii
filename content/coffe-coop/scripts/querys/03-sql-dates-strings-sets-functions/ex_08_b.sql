-- Exercise 08 --b 
-- El código y el nombre de los municipios de Norte de Santander que tienen fincas pero no tienen punto de compra,

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

EXCEPT 
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

/**
 municipality_code |   municipality
-------------------+-------------------
 54003             | Ábrego
 54051             | Arboledas
 54109             | Bucarasica
 54128             | Cáchira
 54125             | Cácota
 54174             | Chitagá
 54001             | Cúcuta
 54223             | Cucutilla
 54239             | Durania
 54250             | El Tarra
 54313             | Gramalote
 54344             | Hacarí
 54385             | La Esperanza
 54398             | La Playa
 54377             | Labateca
 **/
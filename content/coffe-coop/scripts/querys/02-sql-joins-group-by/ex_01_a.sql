--Exercise 01 -a
--Nos muestra codigo,nombre de los municipios de Norte de Santander ordenados alfabeticamente por municipio.

-- Tabla A : geo.municipalities T1
-- Tabla B : geo.departments T2 
-- INNER JOIN 
-- ON T1.department_code= T2.department_code

SELECT 
    T1.municipality_code,
    T1.municipality_name AS municipality,
    T2.department_name AS department
FROM geo.municipalities T1
INNER JOIN geo.departments T2 
    ON T1.department_code= T2.department_code
WHERE T2.department_code ='54'
ORDER BY T1.municipality_name;

/** 
 municipality_code |   municipality    |     department
-------------------+-------------------+--------------------
 54003             | Ábrego            | Norte De Santander
 54051             | Arboledas         | Norte De Santander
 54099             | Bochalema         | Norte De Santander
 54109             | Bucarasica        | Norte De Santander
 54128             | Cáchira           | Norte De Santander
 54125             | Cácota            | Norte De Santander
 54172             | Chinácota         | Norte De Santander
 54174             | Chitagá           | Norte De Santander
 54206             | Convención        | Norte De Santander
 54001             | Cúcuta            | Norte De Santander
 54223             | Cucutilla         | Norte De Santander
 54239             | Durania           | Norte De Santander
 54245             | El Carmen         | Norte De Santander
 54250             | El Tarra          | Norte De Santander
 54261             | El Zulia          | Norte De Santander
 54313             | Gramalote         | Norte De Santander
 54344             | Hacarí            | Norte De Santander
 54347             | Herrán            | Norte De Santander
 (40 filas)
 **/

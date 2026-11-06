-- Exercise 05 --b
--  Consulte el municipio de Norte de Santander con el nombre más largo y su longitud

-- Table A:geo.departments T1
-- Table B:geo.municipalities T2
-- INNER JOIN
-- ON T1.department_code =T2.department_code

SELECT 
    T2.municipality_name AS municipality,
    LENGTH(T2.municipality_name) AS name_length
FROM geo.departments T1
INNER JOIN geo.municipalities T2
    ON T1.department_code =T2.department_code
WHERE T1.department_name ILIKE 'norte de santander'
ORDER BY 2 DESC,1
LIMIT 1; 

/**
   municipality    | name_length
-------------------+-------------
 Villa Del Rosario |          17
(1 fila)
**/
-- Exercise 07 --b
-- Códigos de municipio de Norte de Santander donde vive algún asociado unidos con los códigos de municipio donde hay alguna finca

-- Table A:geo.municipalities T1
-- Table B:geo.departments T2
-- INNER JOIN
--   ON T1.department_code=T2.department_code
-- Table C:farm.farmers T3
-- INNER JOIN 
-- ON T3.municipality_code=T1.municipality_code
-- Table D:farm.farms T4
-- INNER JOIN 
-- T4.municipality_code=T1.municipality_code


SELECT T1.municipality_code
FROM geo.municipalities T1
INNER JOIN geo.departments T2
    ON T1.department_code=T2.department_code
INNER JOIN farm.farmers T3
    ON T3.municipality_code=T1.municipality_code
WHERE T2.department_name ILIKE 'norte de santander'
UNION 
SELECT 
    T1.municipality_code
FROM geo.municipalities T1
INNER JOIN geo.departments T2
    ON T1.department_code=T2.department_code
INNER JOIN farm.farms T4
    ON T4.municipality_code=T1.municipality_code
WHERE T2.department_name ILIKE 'norte de santander'
ORDER BY 1;

/**  municipality_code
-------------------
 54001
 54003
 54051
 54099
 54109
 54125
 54128
 54172
 54174
 54206
 54223
 54239
(40 filas)

**/
-- la conclucion respecto union all nos muestra una gran cantidad de lineas debido a que nos muestra repetidos los codigos de los municipios en donde se encuentran las granjas y 
--UNION solo, nos muestra el codigo del municipio una sola vez 



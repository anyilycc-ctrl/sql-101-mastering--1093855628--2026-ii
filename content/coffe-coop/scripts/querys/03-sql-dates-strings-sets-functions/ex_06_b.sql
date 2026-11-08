-- Exercise 06 -- b
-- frase por cada punto de compra de Norte de Santander con el nombre del punto, el texto ' recibe café en ' y el nombre de su municipio

-- Table A:geo.departments T1
-- Table B: geo.municipalities T2
-- INNER JOIN 
--ON T1.department_code =T2.department_code
-- TABLE C: buy.collection_points T3
-- RIGHT ON T3.municipality_code=T2.municipality_code
--  
SELECT 
    CONCAT(T3.point_name,' recibe cafe en ',T2.municipality_name) AS description
FROM geo.departments T1
INNER JOIN geo.municipalities T2
    ON T1.department_code =T2.department_code
    
RIGHT JOIN buy.collection_points T3
    ON T3.municipality_code=T2.municipality_code
WHERE T1.department_name ILIKE 'norte de santander'
ORDER BY T3.point_name;

/**                       description
--------------------------------------------------------
 Punto de Compra Bochalema 1 recibe cafe en Bochalema
 Punto de Compra Chinácota 1 recibe cafe en Chinácota
 Punto de Compra Convención 1 recibe cafe en Convención
 Punto de Compra El Carmen 1 recibe cafe en El Carmen
 Punto de Compra El Carmen 2 recibe cafe en El Carmen
 Punto de Compra El Zulia 1 recibe cafe en El Zulia
 Punto de Compra Herrán 1 recibe cafe en Herrán
 Punto de Compra Herrán 2 recibe cafe en Herrán
 Punto de Compra Ocaña 1 recibe cafe en Ocaña
 Punto de Compra Sardinata 1 recibe cafe en Sardinata
(10 filas)
**/
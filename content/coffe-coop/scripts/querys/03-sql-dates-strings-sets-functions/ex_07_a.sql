-- Exercise 07 -a 
-- Asociados del municipio 54518 y los puntos de compra de Norte de Santander que tienen teléfono registrado.


-- Table A:farm.farmers T1
-- Table B:buy.collection_points T2
-- Table C:  geo.municipalities T3
-- INNER JOIN
--    ON T2.municipality_code=T3.municipality_code

SELECT 
    CONCAT('farmer') AS contact_type,
    CONCAT(T1.last_Name,T1.last_Name) AS contact_name,
    T1.phone_number AS phone
FROM farm.farmers T1
WHERE T1.municipality_code='54518'
    AND phone_number IS NOT NULL
UNION 
SELECT
    CONCAT('collection_point') AS contact_type,
    T2.point_name,
    T2.phone_number  AS phone 
FROM buy.collection_points T2
INNER JOIN geo.municipalities T3
    ON  T2.municipality_code=T3.municipality_code
WHERE T3.department_code='54'
    AND T2.phone_number IS NOT NULL
ORDER BY 1,2;

/**
   contact_type   |             contact_name             |   phone
------------------+--------------------------------------+------------
 collection_point | Punto de Compra Chinácota 1          | 6018933221
 collection_point | Punto de Compra Convención 1         | 6013582031
 collection_point | Punto de Compra El Carmen 1          | 6026129845
 collection_point | Punto de Compra El Zulia 1           | 6014148127
 collection_point | Punto de Compra Herrán 1             | 6017529911
 collection_point | Punto de Compra Herrán 2             | 6079941701
 collection_point | Punto de Compra Ocaña 1              | 6032506284
 collection_point | Punto de Compra Sardinata 1          | 6039449180
 farmer           | Agudelo JiménezAgudelo Jiménez       | 3219718862
 farmer           | Agudelo SandovalAgudelo Sandoval     | 3242280898
 farmer           | Álvarez BonillaÁlvarez Bonilla       | 3236902029
 farmer           | Álvarez CárdenasÁlvarez Cárdenas     | 3047898372
 farmer           | Álvarez CarrilloÁlvarez Carrillo     | 3059237130


(238 filas)
**/
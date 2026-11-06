-- Exercise 05 --c
-- el código y el nombre del departamento escribiendo en el WHERE exactamente 'Norte de Santander'

    SELECT 
        T1.department_code AS code,
        T1.department_name AS department
    FROM geo.departments T1
    WHERE department_name='Norte de Santander';

/**
 code | department
------+------------
(0 filas)
**/

-- Comparacion

SELECT 
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments T1
WHERE  UPPER(T1.department_name)=UPPER('Norte de Santander');

/**  
 code |       upper        |       upper
------+--------------------+--------------------
 54   | NORTE DE SANTANDER | NORTE DE SANTANDER
(1 fila)

**/
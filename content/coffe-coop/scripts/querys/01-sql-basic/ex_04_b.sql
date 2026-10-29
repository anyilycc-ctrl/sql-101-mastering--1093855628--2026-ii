-- Exercise 04 -b
-- consulta unicamente los municipios cuyo nombre comienza con la palabra San

SELECT municipality_name, department_code
FROM geo.municipalities
WHERE department_code = '54'
 AND municipality_name ILIKE 'san%';

/**  municipality_name | department_code
-------------------+-----------------
 San Calixto       | 54
 San Cayetano      | 54
 Santiago          | 54
(3 filas)
/**
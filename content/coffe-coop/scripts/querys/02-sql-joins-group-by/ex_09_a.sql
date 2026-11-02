-- Exercise 09 -a
-- Total de municipios por departamento, solo los departamentos con más de 45 municipios.

-- Tabla A: geo.departments T1
-- Tabla B: geo.municipalities T2
-- INNER JOIN
-- ON T1.department_code = T2.department_code

 
SELECT 
    T1.department_name AS department,
    COUNT(*) AS total_municipalities
FROM geo.departments T1
INNER JOIN geo.municipalities T2
    ON T1.department_code=  T2.department_code
GROUP BY 1
HAVING COUNT(*) > 45
ORDER BY 2 DESC;

/*
  department  | total_municipalities
--------------+----------------------
 Antioquia    |                  125
 Boyacá       |                  123
 Cundinamarca |                  116
 Santander    |                   87
 Nariño       |                   64
 Tolima       |                   47
 Bolívar      |                   46
(7 filas) 
*/
-- Exercise 10 -c
-- Por cada municipio de Norte de Santander nos muestra el nombre,numero de fincas,Área total sumada y la altitud promedio,solo los municipios con al menos 5 fincas y ordenados por altitud promedio de mayor a menor

-- Table A: geo.municipalities T1
-- Table B: farm.farms T2
-- INNER JOIN
-- ON T1.municipality_code = T2.municipality_code

SELECT 
    T1.municipality_name,
    COUNT(*) AS farm_count,
    SUM(total_area_ha) AS total_area_ha,
    ROUND(AVG(altitude_masl)::numeric,2) AS avg_altitude_masl
FROM geo.municipalities T1
INNER JOIN farm.farms T2
    ON T1.municipality_code = T2.municipality_code
WHERE T1.department_code='54'
GROUP BY T1.municipality_code
HAVING COUNT(*)>5
ORDER BY 4;

/**
 municipality_name | farm_count | total_area_ha | avg_altitude_masl
-------------------+------------+---------------+-------------------
 La Esperanza      |        310 |        919.50 |           1617.97
 Cáchira           |        311 |        828.40 |           1619.76
 Tibú              |        342 |        853.96 |           1628.04
 Chinácota         |        369 |        963.94 |           1628.23
 Villa Del Rosario |        367 |       1007.90 |           1631.11
 Arboledas         |        384 |       1016.38 |           1631.88
 Hacarí            |        339 |       1009.47 |           1631.99
 Convención        |        321 |        976.74 |           1635.27
 Los Patios        |        369 |       1083.52 |           1637.39
 Teorama           |        360 |       1102.08 |           1637.94
 El Carmen         |        319 |        914.45 |           1638.53
 Ocaña             |        339 |        836.98 |           1638.55
 San Cayetano      |        337 |        947.27 |           1638.84
 La Playa          |        361 |       1016.61 |           1639.33
 Herrán            |        332 |        831.53 |           1639.69
 Silos             |        329 |        929.93 |           1642.03
 (40 filas)
 **/


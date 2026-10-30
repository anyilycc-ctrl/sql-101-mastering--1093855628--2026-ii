--Exercise 09 -b
--Del dia 30 de sep de 2026 obtenemos los analisis cuya humedad esta fuera del rango 10% – 12%
-- Tabla A : buy.quality_analyses T1
SELECT 
    T1.analyst_name,
    T1.observations,
    T1.moisture_pct 
FROM buy.quality_analyses T1
WHERE T1.analyzed_at >='2026-09-30 ' 
    AND  T1.analyzed_at <'2026-10-01 ' 
    AND T1.moisture_pct  NOT BETWEEN 10 AND 12; 

/**
    analyst_name    |                          observations                           | moisture_pct
--------------------+-----------------------------------------------------------------+--------------
 Wilson Galvis      |                                                                 |        12.19
 Nicolás Serrano    | Café con humedad alta, requiere más secado.                     |        17.24
 Natalia Trujillo   |                                                                 |        12.15
 Sara Sánchez       |                                                                 |        12.41
 Adriana Losada     |                                                                 |        12.28
 Iván Castro        |                                                                 |        12.22
 Germán González    | Caficultor solicita contramuestra.                              |        12.07
 Alejandra Torres   | Café de buena presentación, sin olores extraños.                |        12.23
 Guillermo Acevedo  |                                                                 |        12.16
 Santiago Rojas     | Café con humedad alta, requiere más secado.                     |        12.95
 Germán Peña        |                                                                 |        16.00
 Heriberto Galvis   |                                                                 |        12.01
 Ruth Polanía       |                                                                 |        12.11
 Efraín Betancur    |                                                                 |        15.30
 Sara Sánchez       |                                                                 |        12.38
 Wilson Galvis      |                                                                 |        12.39
 Santiago Rojas     | Muestra tomada por duplicado.                                   |        12.31
 Germán González    |                                                                 |        12.08
 Laura Henao        |                                                                 |        12.32
 Alejandra Torres   |                                                                 |        12.40
 Gustavo Serrano    |                                                                 |        12.15
 Emilio Polanía     |                                                                 |        12.25
 Reinaldo Bermúdez  | Café sobresecado, grano quebradizo.                             |         9.57
 (40 filas)
**/
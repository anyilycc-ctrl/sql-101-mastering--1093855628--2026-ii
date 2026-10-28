-- EJERCISE 03 -b
-- muestra la columna calculada con la prima de la carga  por 125 gaardada con  un alias premium_per_load_cop
SELECT 
    (premium_per_kg * 125) AS premium_per_load_cop
FROM farm.certifications;

/**
 premium_per_load_cop
----------------------
             37500.00
             50000.00
             18750.00
            100000.00
             31250.00
             43750.00
             62500.00
(7 filas)
/**
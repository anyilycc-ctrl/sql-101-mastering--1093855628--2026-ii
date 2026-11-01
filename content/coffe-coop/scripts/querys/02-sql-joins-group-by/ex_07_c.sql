-- Exercise 07 - c
-- Total de agricultores y total de agricultores con correo electrónico registrado en el municipio con el código '54518'.

-- Tabla A: geo.municipalities T1
-- Tabla B: farm.farmers T2
-- INNER JOIN 
-- ON T1.municipality_code = T2.municipality_code



SELECT
    COUNT(*) AS total_farmers,
    COUNT(T2.email)AS farmers_with_email
FROM geo.municipalities T1
INNER JOIN farm.farmers T2
    ON T1.municipality_code = T2.municipality_code
WHERE T1.municipality_code ='54518';

/**
 total_farmers | farmers_with_email
---------------+--------------------
           230 |                165
(1 fila)
/**

--Conclusion: los dos conteos son diferentes, ya que el primer conteo es el total de agricultores en el municipio con el codigo '54518',
-- mientras que el segundo conteo es el total de agricultores que tienen correo electrónico registrado en la base de datos.
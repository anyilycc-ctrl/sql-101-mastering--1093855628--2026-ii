-- Exercise 04-c 
-- consulta en todo el país los municipios cuyo nombre contiene la palabra Pamplona

SELECT *FROM geo.municipalities
WHERE municipality_name ILIKE '%pamplona%'; 

/**
 municipality_code | municipality_name | department_code
-------------------+-------------------+-----------------
 54518             | Pamplona          | 54
(1 fila)
/**
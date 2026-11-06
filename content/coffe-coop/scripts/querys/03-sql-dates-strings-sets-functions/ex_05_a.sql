-- Exercise 05 -a
--  nombre de cada variedad en mayúscula sostenida, la especie en minúscula y la longitud del nombre de la variedad

SELECT 
    UPPER(T1.variety_name) AS variety_name,
    LOWER(T1.species) AS species,
    LENGTH(T1.variety_name) AS name_length
FROM farm.coffee_varieties T1
ORDER BY 3 desc;

/**
 variety_name  | species | name_length
---------------+---------+-------------
 BORBÓN ROSADO | arabica |          13
 MARAGOGIPE    | arabica |          10
 CENICAFÉ 1    | arabica |          10
 COLOMBIA      | arabica |           8
 CASTILLO      | arabica |           8
 PACAMARA      | arabica |           8
 ROBUSTA       | robusta |           7
 CATURRA       | arabica |           7
 GEISHA        | arabica |           6
 BORBÓN        | arabica |           6
 TÍPICA        | arabica |           6
 TABI          | arabica |           4
(12 filas)
**/
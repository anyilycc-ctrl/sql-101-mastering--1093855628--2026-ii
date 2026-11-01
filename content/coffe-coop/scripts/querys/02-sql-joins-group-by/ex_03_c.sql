-- Exercise 03 - c
-- Lista las variedades que no están sembradas en ningún lote

-- TAbla A: farm.plot_varieties T1
-- Tabla B: farm.coffee_varieties T2
-- RIGHT JOIN
-- ON T1.variety_id = T2.variety_id

SELECT
    T2.variety_name AS variety,
    T2.species,
    T1.variety_id
FROM farm.plot_varieties T1
RIGHT JOIN farm.coffee_varieties T2
    ON T1.variety_id = T2.variety_id
    AND T1.variety_id IS NULL;

/**
    variety    | species | variety_id
---------------+---------+------------
 Castillo      | arabica |
 Colombia      | arabica |
 Caturra       | arabica |
 Cenicafé 1    | arabica |
 Típica        | arabica |
 Borbón        | arabica |
 Tabi          | arabica |
 Geisha        | arabica |
 Borbón Rosado | arabica |
 Maragogipe    | arabica |
 Pacamara      | arabica |
 Robusta       | robusta |
(12 filas)
**/
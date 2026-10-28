-- Exercise 02 - b
-- muestra variedades no resistentes a la roya de la especie arabica, ordenadas por nombre de forma descendente.

SELECT 
    variety_name as variety,
    species as species ,
    description as description
FROM farm.coffee_varieties
WHERE is_rust_resistant = FALSE 
    AND species = 'arabica'
ORDER BY variety_name DESC;

/**    variety    | species |                      description
---------------+---------+--------------------------------------------------------
 Típica        | arabica | Variedad tradicional de porte alto.
 Pacamara      | arabica | Cruce de Pacas y Maragogipe, grano grande.
 Maragogipe    | arabica | Variedad de grano grande.
 Geisha        | arabica | Variedad de especialidad con perfil floral.
 Caturra       | arabica | Mutación de Borbón de porte bajo y alta productividad.
 Borbón Rosado | arabica | Variedad de especialidad de fruto rosado.
 Borbón        | arabica | Variedad tradicional de buena calidad en taza.
(7 filas)
/**
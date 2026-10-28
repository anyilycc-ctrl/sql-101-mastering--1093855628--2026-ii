-- Exercise 02 - a
-- muestra el nombre, especie y descripción de la tabla farm.coffe_variety

SELECT 
    variety_name as variety, 
    species as species ,
    description as description
FROM farm.coffee_varieties;


/**
    variety    | species |                             description
---------------+---------+---------------------------------------------------------------------
 Castillo      | arabica | Variedad colombiana resistente a la roya, la más sembrada del país.
 Colombia      | arabica | Variedad compuesta resistente a la roya, antecesora de Castillo.
 Caturra       | arabica | Mutación de Borbón de porte bajo y alta productividad.
 Cenicafé 1    | arabica | Variedad de porte bajo con resistencia a la roya.
 Típica        | arabica | Variedad tradicional de porte alto.
 Borbón        | arabica | Variedad tradicional de buena calidad en taza.
 Tabi          | arabica | Variedad de porte alto resistente a la roya.
 Geisha        | arabica | Variedad de especialidad con perfil floral.
 Borbón Rosado | arabica | Variedad de especialidad de fruto rosado.
 Maragogipe    | arabica | Variedad de grano grande.
 Pacamara      | arabica | Cruce de Pacas y Maragogipe, grano grande.
 Robusta       | robusta | Especie Coffea canephora, de mayor contenido de cafeína.
(12 filas)
/**
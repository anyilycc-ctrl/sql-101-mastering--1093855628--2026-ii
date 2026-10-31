-- Exercise 01 -b
--  nombre de la finca, la vereda,municipio y los nombres y apellidos del caficultor dueno de las fincas del municipio 54518, ordenadas por apellido del caficultor
-- Table A:geo.municipalities T1
-- Table B:farm.farms T2 
-- INNER JOIN 
-- ON T2.municipality_code =T1.municipality_code
-- Table C:farm.farmers T3 
-- ON T3.municipality_code= T1.municipality_code

SELECT 
    T2.farm_name AS farm,
    T2.rural_district,
    T1.municipality_name AS municipality,
    T3.first_name,
    T3.last_name
FROM geo.municipalities T1
INNER JOIN farm.farms T2 
    ON T2.municipality_code =T1.municipality_code
INNER JOIN farm.farmers T3 
    ON T3.municipality_code= T1.municipality_code
WHERE T1.municipality_code='54518'
ORDER BY T3.last_name;

/**
       farm       |    rural_district    | municipality |    first_name     |     last_name
------------------+----------------------+--------------+-------------------+--------------------
 La Selva         | Sabaneta Baja        | Pamplona     | Manuel            | Agudelo Jiménez
 El Diamante      | Tampanqueba          | Pamplona     | Manuel            | Agudelo Jiménez
 El Recuerdo      | Alto Grande          | Pamplona     | Manuel            | Agudelo Jiménez
 La Esperanza     | El Palchal           | Pamplona     | Manuel            | Agudelo Jiménez
 El Nogal         | San José De Tonchala | Pamplona     | Manuel            | Agudelo Jiménez
 La Divisa        | Cabecera Municipal   | Pamplona     | Manuel            | Agudelo Jiménez
 Las Delicias     | Caima                | Pamplona     | Manuel            | Agudelo Jiménez
 Villa Rosa       | San José De Tonchala | Pamplona     | Manuel            | Agudelo Jiménez
 La Granja        | García               | Pamplona     | Manuel            | Agudelo Jiménez
 Los Arrayanes    | Cabecera Municipal   | Pamplona     | Manuel            | Agudelo Jiménez
 La Cascada       | Fontibón             | Pamplona     | Manuel            | Agudelo Jiménez
 El Brillante     | Peñas                | Pamplona     | Manuel            | Agudelo Jiménez
 El Porvenir      | Fontibón             | Pamplona     | Manuel            | Agudelo Jiménez
 La Florida       | Peñas                | Pamplona     | Manuel            | Agudelo Jiménez
 Los Arrayanes    | Navarro              | Pamplona     | Manuel            | Agudelo Jiménez
 El Horizonte     | El Escorial          | Pamplona     | Manuel            | Agudelo Jiménez
 La Primavera     | Tampanqueba          | Pamplona     | Manuel            | Agudelo Jiménez
 El Porvenir      | Iscaligua            | Pamplona     | Manuel            | Agudelo Jiménez
 El Guayabo       | San Francisco        | Pamplona     | Manuel            | Agudelo Jiménez

(84640 filas)**/
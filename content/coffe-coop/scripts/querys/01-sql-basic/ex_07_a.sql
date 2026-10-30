--Exersice 07 - a
-- fiels: fasm_name, rural district, total_area_ha , altitude_masl con sus alias del municipio 54518 ubicadas por encima de los 1800 m.s.n.m
-- Tabla A: farm.farms T1

SELECT 
    T1.farm_name AS farm,
    T1.rural_district,
    T1.total_area_ha AS area_ha,
    T1.altitude_masl 
FROM farm.farms T1
WHERE T1.municipality_code = '54518' 
    AND T1.altitude_masl>1800
ORDER BY T1.altitude_masl DESC;

/**
      farm      |    rural_district    | area_ha | altitude_masl
----------------+----------------------+---------+---------------
 Santa Clara    | La Legua             |    2.62 |          2300
 El Guayabo     | El Rosal             |    1.21 |          2300
 La Cascada     | Caima                |    2.49 |          2300
 El Vergel      | Sabagua              |    1.11 |          2300
 La Isabela     | García               |    1.36 |          2275
 El Refugio     | Monteadentro         |    4.89 |          2242
 Cafetal Viejo  | Caima                |    5.29 |          2229
 San José       | Alcaparral           |    3.12 |          2203
 El Refugio     | Sabaneta Baja        |    1.93 |          2195
 Villa Hermosa  | Peñas                |    0.30 |          2181
 El Nogal       | San José De Tonchala |    3.24 |          2177
 El Paraíso     | Navarro              |    1.67 |          2164
 El Danubio     | García               |    7.83 |          2160
 Las Orquídeas  | Sabaneta Baja        |    0.78 |          2152
 Los Laureles   | San José De Tonchala |    0.84 |          2148
 La Granja      | El Palchal           |    2.83 |          2140
 Los Guaduales  | El Palchal           |    2.66 |          2135
 La Argentina   | Lengua               |    1.45 |          2124
 El Mesón       | Navarro              |    1.40 |          2122
 Las Acacias    | Cunuba               |    0.94 |          2121
 Cafetal Viejo  | La Legua             |    0.42 |          2109
 (108 filas)
 **/
 
 
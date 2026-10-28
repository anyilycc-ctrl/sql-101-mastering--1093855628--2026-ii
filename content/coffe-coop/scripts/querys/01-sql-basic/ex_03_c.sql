-- EJERCISE 03 -C
--Muestra solo las certificaciones cuya prima por kg sea mayor o igual a 350 COP

SELECT *FROM farm.certifications
WHERE premium_per_kg >= 350 ;

/** 
 certification_id | certification_name |           issuing_body            | premium_per_kg
------------------+--------------------+-----------------------------------+----------------
                2 | Fairtrade          | Fairtrade International           |         400.00
                4 | Orgánico           | Ente certificador orgánico        |         800.00
                6 | Nespresso AAA      | Nespresso / Rainforest Alliance   |         350.00
                7 | Bird Friendly      | Smithsonian Migratory Bird Center |         500.00
(4 filas)
/**

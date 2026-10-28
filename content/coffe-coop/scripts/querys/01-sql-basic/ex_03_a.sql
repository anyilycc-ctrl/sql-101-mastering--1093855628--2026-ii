-- EJERCISE 03 -a
-- Lista las certificaciones de café y su prima por kilo en pesos colombianos, ordenadas de mayor a menor prima.

SELECT 
    certification_name as certification,
     issuing_body as issuer, 
     premium_per_kg as premium_per_kg_cop
FROM farm.certifications
ORDER BY premium_per_kg_cop DESC;

/**
    certification    |              issuer               | premium_per_kg_cop
---------------------+-----------------------------------+--------------------
 Orgánico            | Ente certificador orgánico        |             800.00
 Bird Friendly       | Smithsonian Migratory Bird Center |             500.00
 Fairtrade           | Fairtrade International           |             400.00
 Nespresso AAA       | Nespresso / Rainforest Alliance   |             350.00
 Rainforest Alliance | Rainforest Alliance               |             300.00
 C.A.F.E. Practices  | Starbucks / SCS Global Services   |             250.00
 4C                  | 4C Services                       |             150.00
(7 filas)
/**
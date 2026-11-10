-- Exercise 09--b 
-- La función farm.fn_age_years recibe como parametros dos DATE, que devuelva la edad en años es decir numero entero,entre las dos fechas
-- La probe consultando el top 10 de asociados del municipio 54518 que se afiliaron más jóvenes

CREATE OR REPLACE FUNCTION farm.fn_age_years(p_birth_date DATE, p_reference_date DATE) 
RETURNS INT 
LANGUAGE plpgsql
AS
$$
DECLARE
    edad INT;

BEGIN
    SELECT EXTRACT(YEAR FROM (AGE(p_reference_date,p_birth_date)))
    INTO edad;
    RETURN edad;
END;
$$;


SELECT 
    T1.document_number AS document,
    T1.first_name,
    T1.last_name,
    farm.fn_age_years(T1.birth_date,'2026-09-30') AS age_years,
    farm.fn_age_years(birth_date, membership_date) AS age_at_membership
FROM farm.farmers T1
INNER JOIN geo.municipalities T2
    ON T1.municipality_code=T2.municipality_code
WHERE T1.municipality_code='54518'
ORDER BY  5
LIMIT 10;

/** 
  document  |   first_name   |     last_name     | age_years | age_at_membership
------------+----------------+-------------------+-----------+-------------------
 92240743   | Mario          | Ríos Ibarra       |        27 |                18
 1180237528 | Ángela Beatriz | Sandoval Bermúdez |        29 |                18
 571748382  | Marleny        | Pinzón Delgado    |        35 |                18
 333176982  | Edilma         | Rivera Rivera     |        30 |                18
 1090968710 | Ruth           | Rodríguez Pérez   |        34 |                18
 455264704  | Valentina      | Mora Rangel       |        26 |                18
 211924295  | Álvaro         | Valencia Rivera   |        30 |                18
 700421194  | Teresa         | Torres Giraldo    |        27 |                18
 463842401  | Rocío          | Álvarez Cárdenas  |        26 |                18
 1196615388 | Fernando       | Burbano Flórez    |        27 |                18
(10 filas)
**/
-- Exercise 09 --c 
-- Cree la farm.fn_short_name que tiene dos parametros VARCHAR que devuelva un VARCHAR la inicial del nombre en mayúscula, un punto, un espacio y los apellidos
-- La probe para listar los asociados (gender = 'M') del municipio 54518 con su teléfono,ordenados por apellido y nombre.

CREATE OR REPLACE FUNCTION  farm.fn_short_name(p_first_name VARCHAR, p_last_name VARCHAR)
RETURNS VARCHAR
LANGUAGE plpgsql
AS
$$
DECLARE
recorte VARCHAR;
BEGIN 
SELECT 
    CONCAT(UPPER(SUBSTRING(p_first_name,1,1)),'. ', p_last_name)
INTO recorte
FROM farm.farmers T1;
RETURN recorte;
END; 
$$;


SELECT 
    farm.fn_short_name(T1.first_name,T1.last_name) AS short_name,
    T1.phone_number AS phone
FROM farm.farmers T1
WHERE T1.gender='F'
    AND T1.municipality_code='54518'
ORDER BY last_name,first_name;

/**
      short_name      |   phone
----------------------+------------
 M. Agudelo Sandoval  | 3242280898
 E. Álvarez Bonilla   | 3236902029
 R. Álvarez Cárdenas  | 3047898372
 M. Álvarez Carrillo  | 3059237130
 M. Álvarez Correa    | 3232410671
 M. Arango Narváez    | 3178267449
 E. Arias Álvarez     | 3213658326
 V. Arias Ramírez     | 3204850778
 I. Barrera Cabrera   | 3041744702
 M. Barrera Correa    | 3126485460
 A. Bastidas Chamorro | 3023807439
 M. Bastidas Medina   | 3508652479
 R. Bastidas Suárez   | 3015208796
 (111 filas)
 **/
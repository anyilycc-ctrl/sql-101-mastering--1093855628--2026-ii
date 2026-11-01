-- Exercise 01 - b
-- Nos muestra el documento, nombres y apellidos unicamente de los asociados que no tienen ninguna finca registrada.

-- Tabla A: farm.farmers T1
-- Tabla B: farm.farms T2
-- LEFT JOIN
--  ON T1.farmer_id =T2.farmer_id

SELECT
    T1.document_number AS documents,
    T1.first_name, 
    T1.last_name,
    T2.farm_name AS farm
FROM farm.farmers T1
LEFT JOIN farm.farms T2
    ON T1.farmer_id =T2.farmer_id
    AND T1.municipality_code='54518'
    AND T2.farmer_id IS NULL;
    
/**
 documents  |     first_name      |       last_name       | farm
------------+---------------------+-----------------------+-----------
 108828340  | Hugo                | Peña Arango           |
 370872263  | Jazmín              | Díaz Salazar          |
 546720144  | Natalia             | Rodríguez Burbano     |
 259833967  | Jaime               | Erazo Torres          |
 919873641  | Ruth                | Barrera Díaz          |
 850840825  | David Mario         | Agudelo Vera          |
 644315322  | Ancízar             | Ibarra Arias          |
 246220782  | Mónica              | Jiménez Serrano       |
 286734955  | Alejandro           | González Marín        |
 498468647  | Libardo Nicolás     | Herrera Carrillo      |
 159658569  | Claudia             | Trujillo Mejía        |
 1157649530 | Luis                | Lozano Mejía          |
 782282793  | Óscar Héctor        | Herrera Londoño       |
 53981824   | Arturo              | González Gómez        |
 654401485  | Sandra Erika        | Ortiz Zuluaga         |
 450242777  | Esperanza           | Caicedo Cabrera       |
 805334932  | Germán Ancízar      | Zuluaga González      |
 37523685   | Daniela             | Castillo Ramos        |
 120568553  | Fanny Sara          | Rodríguez Ruiz        |
 944360017  | Fabio               | Restrepo Correa       |
 362863410  | Sebastián           | García Henao          |
 1147323038 | Heriberto Carlos    | Silva Polanía         |
 387313735  | Manuel Rafael       | Mejía Rodríguez       |
 395214891  | Daniel              | Álvarez Restrepo      |
 599349937  | Laura               | González Sandoval     |
 218207573  | María               | Herrera Polanía       |
 925515421  | Mariana             | Vélez Rojas           |
 241764796  | Ángela              | Ospina Contreras      |
 134738793  | Adriana             | Calderón González     |
 937459038  | Felipe              | Caicedo Betancur      |
 88446905   | Wilmer              | Calderón Ospina       |
(150000 filas)
**/
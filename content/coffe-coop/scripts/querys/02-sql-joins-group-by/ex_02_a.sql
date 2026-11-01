-- Exercise 01 - a
-- Nos muestra el documento, nombres y apellidos de todos los asociados del municipio 54518 junto con el nombre de su finca

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
    AND T1.municipality_code='54518';
    
/**
 documents  |     first_name      |       last_name       |    farm
------------+---------------------+-----------------------+------------------
 1061690671 | Guillermo Pedro     | Arias Rodríguez       | La Selva
 134410171  | Orlando             | Salazar Bermúdez      | El Diamante
 870240973  | Jairo               | Molina Pabón          | El Recuerdo
 549054771  | María               | Burbano Duarte        | El Nogal
 549054771  | María               | Burbano Duarte        | La Divisa
 622105662  | Alejandra           | Molina Torres         | La Carolina
 622105662  | Alejandra           | Molina Torres         | La Cristalina
 622105662  | Alejandra           | Molina Torres         | Villa Rosa
 358946393  | Carmen              | Cárdenas Moreno       | La Esperanza
 358946393  | Carmen              | Cárdenas Moreno       | La Primavera
 358946393  | Carmen              | Cárdenas Moreno       | El Porvenir
 343256743  | Dora                | Hernández Correa      | Cafetal Viejo
 1148351420 | Inés                | Jiménez Jaimes        | La Gaitana
 1148351420 | Inés                | Jiménez Jaimes        | El Recuerdo
 802182926  | Antonio             | Díaz Vélez            | Las Mercedes
 802182926  | Antonio             | Díaz Vélez            | El Mango
 691510769  | Guillermo           | Valencia Flórez       |
 741448478  | Felipe              | Villamizar Chamorro   |
 525254782  | Mauricio            | Vera Duarte           |
 463258486  | Nicolás             | Henao Ospina          |
 804395951  | Isabella Rocío      | Lasso Tovar           |
 539312069  | Felipe              | Castillo Rangel       |
 (150140 filas)
 **/

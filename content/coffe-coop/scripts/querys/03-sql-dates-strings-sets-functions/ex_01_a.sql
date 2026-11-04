-- Exercise 01 -a
--  Nos muestra el documento, los nombres, apellidos, la fecha de afliación y la antigüedad en días a la fecha de hoy de manera descendente 

SELECT 
    T1.document_number AS document, 
    T1.first_name,
    T1.last_name,
    T1.membership_date,
    (CURRENT_DATE -T1.membership_date) AS membership_days
FROM farm.farmers T1
WHERE T1.municipality_code='54518'
ORDER BY 5 DESC;


/**
  document  |    first_name     |     last_name      | membership_date | membership_days
------------+-------------------+--------------------+-----------------+-----------------
 402745033  | Julián Guillermo  | Valencia Narváez   | 1995-01-27      |           11604
 361839624  | Rocío Alba        | Ortega Serrano     | 1995-07-10      |           11440
 546579335  | Wilson            | Parra Prada        | 1995-07-28      |           11422
 939635303  | Marleny           | Álvarez Correa     | 1996-03-20      |           11186
 748380481  | Teresa Adriana    | Valencia Moreno    | 1996-07-23      |           11061
 1012324420 | Martha Carolina   | Pérez Jaimes       | 1996-11-22      |           10939
 230971064  | Manuel            | Agudelo Jiménez    | 1997-03-29      |           10812
 483692716  | Ramiro            | Barrera Villamizar | 1997-04-08      |           10802
 677772599  | Guillermo         | Pérez Pérez        | 1997-05-17      |           10763
 59388780   | Juan              | Ortega Zapata      | 1997-07-13      |           10706
 789425487  | Efraín Ricardo    | Contreras Ospina   | 1997-07-21      |           10698
 172555225  | Edilma Gabriela   | Arias Álvarez      | 1998-03-24      |           10452
 659942505  | Mariana           | Barrera Correa     | 1998-03-27      |           10449
 914235490  | Óscar             | Ospina González    | 1998-05-02      |           10413
 963176673  | Luis              | Mosquera Perdomo   | 1998-07-29      |           10325
 142439635  | Yeison            | Medina Londoño     | 1998-09-29      |           10263
 (230 filas)
 **/
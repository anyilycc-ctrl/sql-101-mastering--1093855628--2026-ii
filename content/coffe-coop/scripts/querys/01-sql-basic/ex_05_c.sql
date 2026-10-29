-- Exercise 05-c
-- Consulte los puntos que estan inactivos o que no tiene telefono, mostrando el numero y activo

SELECT point_name,phone_number, is_active
FROM buy.collection_points
WHERE is_active = FALSE OR phone_number IS NULL;

/**
           point_name           | phone_number | is_active
--------------------------------+--------------+-----------
 Punto de Compra El Banco 1     | 6055026534   | f
 Punto de Compra Popayán 1      | 6057341141   | f
 Punto de Compra Hatonuevo 1    |              | t
 Punto de Compra Bosconia 1     |              | t
 Punto de Compra Cajibío 1      |              | t
 Punto de Compra Anserma 1      |              | t
 Punto de Compra Apía 2         |              | f
 Punto de Compra Puracé 1       |              | t
 Punto de Compra Aipe 1         |              | t
 Punto de Compra Marsella 1     |              | t
 Punto de Compra Flandes 1      |              | t
 Punto de Compra La Gloria 1    |              | t
 Punto de Compra Tesalia 1      |              | t
 Punto de Compra Icononzo 1     |              | t
 Punto de Compra Tello 1        | 6037843794   | f
 Punto de Compra Venecia 1      |              | t
 Punto de Compra Turbo 1        | 6075864511   | f
 Punto de Compra Paicol 2       | 6071743803   | f
 Punto de Compra El Tambo 2     |              | t
 Punto de Compra La Argentina 1 |              | t
 Punto de Compra Rionegro 1     | 6037017611   | f
 Punto de Compra Pelaya 1       |              | t
 Punto de Compra Ulloa 1        | 6061856687   | f
 Punto de Compra Isnos 1        |              | t
 Punto de Compra San Lorenzo 1  |              | t
 Punto de Compra Timbiquí 1     |              | t
 Punto de Compra Nátaga 1       | 6082388547   | f
 Punto de Compra Cisneros 1     |              | t
 Punto de Compra El Carmen 2    |              | t
 Punto de Compra Baraya 1       |              | t
 Punto de Compra Bochalema 1    |              | t
 Punto de Compra Turbo 2        |              | t
 Punto de Compra Villa Rica 1   |              | t
 Punto de Compra Coello 1       |              | t
(34 filas)
/**
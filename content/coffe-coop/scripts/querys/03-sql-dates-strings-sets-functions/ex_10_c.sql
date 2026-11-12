-- Exercise 10 --C 
-- nos muestra por cada punto de compra el número de liquidaciones no anuladas de las entregas de ese día y el saldo pendiente

SELECT
    T1.point_name AS collection_point,
    COUNT(*) AS settlement_count,
    SUM(pay.fn_settlement_balance(T3.settlement_id )) AS total_balance_coP
FROM buy.collection_points T1
INNER JOIN buy.deliveries T2
    ON T1.collection_point_id=T2.collection_point_id
INNER JOIN pay.settlements T3
    ON T3.delivery_id=T2.delivery_id
WHERE 
    T2.delivered_at::DATE ='2026-09-30'
    AND T3.status<>'cancelled'
GROUP BY T1.collection_point_id, T1.point_name 
HAVING SUM(pay.fn_settlement_balance(T3.settlement_id ))>0
ORDER BY 3 DESC;



/**
            collection_point            | settlement_count | total_balance_cop
----------------------------------------+------------------+-------------------
 Punto de Compra San Francisco 1        |                2 |        8483555.66
 Punto de Compra El Banco 1             |                3 |        7874484.05
 Punto de Compra San Andrés De Tumaco 1 |                2 |        7376967.21
 Punto de Compra Cajibío 3              |                3 |        6400728.72
 Punto de Compra Manzanares 1           |                2 |        6094824.45
 Punto de Compra Puerto Tejada 1        |                2 |        6051013.94
 Punto de Compra El Bagre 1             |                3 |        5013706.66
 Punto de Compra Sáchica 1              |                1 |        4965142.70
 Punto de Compra Algeciras 1            |                2 |        4135855.75
 Punto de Compra Turbo 1                |                1 |        4023811.68
 Punto de Compra Bochalema 1            |                2 |        3835395.90
 Punto de Compra Carmen De Apicalá 3    |                1 |        3558394.56
 Punto de Compra Teruel 1               |                2 |        3226895.19
 Punto de Compra Rioblanco 2            |                1 |        3062643.10
 (29 filas)
 **/
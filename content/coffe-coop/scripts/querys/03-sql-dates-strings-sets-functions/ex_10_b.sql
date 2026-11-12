-- Exercise 10 --b  
-- Utilizando la funcion anterior consultamos las liquidaciones de las entregas del 30 de septiembre de 2026 que no están anuladas 

SELECT 
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.status AS settlement_status,
    T1.net_amount AS net_cop,
    pay.fn_settlement_balance(T1.settlement_id)>0 AS balance_cop
FROM pay.settlements AS T1
WHERE settled_at::DATE='2026-09-30'
    AND T1.status <> 'cancelled'
    AND pay.fn_settlement_balance(T1.settlement_id)>0   
    ORDER BY 5
    LIMIT 10;

/**
     settlement      |      delivery       | settlement_status |  net_cop   | balance_cop
---------------------+---------------------+-------------------+------------+-------------
 STL-20260930-000018 | DLV-20260927-000097 | pending           | 4682246.40 | t
 STL-20260930-000002 | DLV-20260927-000104 | pending           | 3453760.66 | t
 STL-20260930-000027 | DLV-20260927-000144 | pending           | 3014608.64 | t
 STL-20260930-000007 | DLV-20260927-000177 | pending           | 4569033.82 | t
 STL-20260930-000030 | DLV-20260927-000197 | pending           |  917654.39 | t
 STL-20260930-000017 | DLV-20260927-000210 | pending           | 1965647.65 | t
 STL-20260930-000004 | DLV-20260927-000277 | partially_paid    | 1930122.21 | t
 STL-20260930-000013 | DLV-20260928-000004 | pending           | 5087855.55 | t
 STL-20260930-000006 | DLV-20260928-000058 | pending           | 3313043.47 | t
 STL-20260930-000011 | DLV-20260927-000088 | pending           | 4834069.24 | t
(10 filas)
**/


X
















CREATE OR REPLACE FUNCTION pay.fn_municipality_pending_balance(p_municipality_code VARCHAR, p_year INT)
RETURNS NUMERIC(14,2)
LANGUAGE plpgsql
AS
$$ 
DECLARE
total NUMERIC(14,2);
BEGIN
    SELECT 
        COALESCE(SUM(T4.net_amount)-SUM(T3.amount),0)
    INTO
        total;
    FROM geo.municipality T1
    INNER JOIN farm.farms T2
        ON T2.municipality_code=T1.municipality_code
    INNER JOIN   buy.deliveries T3
        ON T3.farm_id=T2.farm_id
    INNER JOIN pay.settlements T4
        ON T3.delivery_id=T4.delivery_id
    INNER JOIN pay.payments T5
        ON T4.settlement_id=T5.settlement_id
    WHERE T1.municipality_code=p_municipality_code
        AND EXTRACT(year from T2.delivered_at)=p_year
        AND T4.status <> 'cancelled';
    RETURN total;
END;
$$;
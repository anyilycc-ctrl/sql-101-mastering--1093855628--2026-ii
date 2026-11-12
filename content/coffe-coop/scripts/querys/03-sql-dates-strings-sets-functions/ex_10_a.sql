-- Exercise 10 --a 
-- Funcion que devuelve el saldo de una liquidación 
-- EJEMPLO 

CREATE OR REPLACE FUNCTION pay.fn_settlement_balance(p_settlement_id TEXT)
RETURNS DECIMAL
LANGUAGE plpgsql
AS 
$$ 
DECLARE 
    v_net DECIMAL(14,2);
    v_paid DECIMAL(14,2);
BEGIN 
    SELECT 
        T1.net_amount::DECIMAL(14,2),
        SUM(T2.amount)::DECIMAL(14,2)
    INTO 
        v_net, 
        v_paid
    FROM pay.settlements T1
    LEFT JOIN pay.payments T2
        ON T1.settlement_id::TEXT = T2.settlement_id::TEXT
    WHERE T1.settlement_id::TEXT = p_settlement_id::TEXT 
    GROUP BY T1.settlement_id::TEXT, T1.net_amount::DECIMAL(14,2);

    RETURN (v_net - COALESCE(v_paid, 0::DECIMAL(14,2)))::DECIMAL(14,2);
END;
$$;

SELECT pay.fn_settlement_balance('STL-20261001-000040') AS balance_cop; 

/**
 balance_cop
-------------
  6094824.45
(1 fila)
**/
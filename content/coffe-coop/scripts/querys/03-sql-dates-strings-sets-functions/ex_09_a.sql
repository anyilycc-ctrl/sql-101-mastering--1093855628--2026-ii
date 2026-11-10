-- Exercise  09 --a 
-- Función buy.fn_count_deliveries(p_point_name VARCHAR, p_date DATE) que devuelve un entero, el número de entregas que recibió el punto de compra con ese nombre en esa fecha
-- Y la probamos con el punto de compra de Bochalema 1 con la fechas(2026.-09-30)


CREATE OR REPLACE FUNCTION buy.fn_count_deliveries(p_point_name VARCHAR,p_date DATE)
    RETURNS INT
    LANGUAGE plpgsql
    AS
 $$
DECLARE
    v_count INT;
BEGIN 
    SELECT COUNT(*) 
    INTO v_count
    FROM buy.deliveries T1
    INNER JOIN buy.collection_points T2
        ON T1.collection_point_id =T2.collection_point_id
    WHERE T2.point_name =p_point_name
        AND T1.delivered_at::date=p_date
    GROUP BY T2.collection_point_id;
    RETURN COALESCE(v_count,0);
END;
$$;
SELECT buy.fn_count_deliveries('Punto de Compra Bochalema 1','2026-09-30') AS deliveries_count ;


/**
 deliveries_count
------------------
                4
(1 fila)
**/
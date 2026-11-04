-- Exercise 01- c
-- Consulte en una sola fila, sin tabla, el resultado de NOW() y de CURRENT_DATE

SELECT 
    NOW() AS now_ts,
    CURRENT_DATE AS today;


/**
            now_ts             |   today
-------------------------------+------------
 2026-11-04 16:23:54.131277-05 | 2026-11-04
(1 fila)

**/
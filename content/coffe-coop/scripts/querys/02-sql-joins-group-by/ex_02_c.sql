-- Exercise 02 -c
-- todas las entregas del 30 de septiembre de 2026, ordenadas por codigo de entrega.

-- Tabla A: buy.deliveries T1
-- Tabla B:  buy.quality_analyses T2
-- LEFT JOIN
--  ON T1.delivery_id = T2.delivery_id

SELECT 
    T1.delivery_id AS delivery,
    T2.analysis_id AS analysis,
    T2.cup_score
FROM buy.deliveries T1
LEFT JOIN buy.quality_analyses T2
    ON T1.delivery_id = T2.delivery_id
WHERE 
    T1.delivered_at>='2026-09-30'
    AND T1.delivered_at<'2026-10-01'
ORDER BY T1.delivery_id;
/**
      delivery       |      analysis      | cup_score
---------------------+--------------------+-----------
 DLV-20260930-000001 |                    |
 DLV-20260930-000002 |                    |
 DLV-20260930-000003 | QA-20260930-000001 |
 DLV-20260930-000004 | QA-20260930-000002 |
 DLV-20260930-000005 | QA-20260930-000026 |     78.56
 DLV-20260930-000006 | QA-20260930-000018 |     79.98
 DLV-20260930-000007 |                    |
 DLV-20260930-000008 | QA-20260930-000007 |
 DLV-20260930-000009 |                    |
 DLV-20260930-000010 | QA-20260930-000006 |
 DLV-20260930-000011 |                    |
 DLV-20260930-000012 | QA-20260930-000017 |
 DLV-20260930-000013 |                    |
 DLV-20260930-000014 |                    |
 DLV-20260930-000015 | QA-20260930-000009 |     82.93
 DLV-20260930-000016 |                    |
 DLV-20260930-000017 | QA-20260930-000037 |
 DLV-20260930-000018 |                    |
 DLV-20260930-000019 |                    |
 DLV-20260930-000020 | QA-20260930-000004 |
 DLV-20260930-000021 |                    |
 DLV-20260930-000022 |                    |
 (300 filas)
 **/
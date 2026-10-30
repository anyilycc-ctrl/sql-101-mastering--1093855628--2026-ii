-- Exercise 08- c
-- Entregas cuyo tipo de cafe sea wet_parchment o cherry , ordenadas por peso bruto de mayor a menor
-- Tabla A: buy.deliveries T1

SELECT *FROM buy.deliveries T1
WHERE T1.delivery_id LIKE '%20260930%' 
    AND T1.coffee_type IN ('wet_parchment','cherry')
ORDER BY T1.gross_weight_kg DESC;

/**
     delivery_id     | farm_id | collection_point_id |    delivered_at     |  coffee_type  | bag_count | gross_weight_kg |  status
---------------------+---------+---------------------+---------------------+---------------+-----------+-----------------+----------
 DLV-20260930-000081 |   19338 |                 117 | 2026-09-30 09:17:37 | cherry        |         9 |          475.13 | received
 DLV-20260930-000187 |  231839 |                 159 | 2026-09-30 12:47:52 | cherry        |         6 |          339.30 | received
 DLV-20260930-000105 |   13478 |                  37 | 2026-09-30 09:57:09 | wet_parchment |         5 |          277.63 | settled
 DLV-20260930-000028 |  182397 |                 133 | 2026-09-30 07:13:46 | wet_parchment |         4 |          258.00 | received
 DLV-20260930-000133 |   44726 |                  59 | 2026-09-30 10:51:03 | cherry        |         4 |          254.83 | received
 DLV-20260930-000094 |   99627 |                 133 | 2026-09-30 09:31:20 | cherry        |         4 |          246.96 | received
 DLV-20260930-000129 |   89312 |                  76 | 2026-09-30 10:44:39 | wet_parchment |         4 |          206.71 | received
 DLV-20260930-000161 |  101318 |                  24 | 2026-09-30 12:06:51 | wet_parchment |         4 |          197.04 | accepted
 DLV-20260930-000046 |   85553 |                 140 | 2026-09-30 07:30:47 | wet_parchment |         3 |          186.73 | accepted
 DLV-20260930-000248 |  215660 |                 166 | 2026-09-30 14:59:13 | cherry        |         3 |          159.89 | received
 DLV-20260930-000052 |   92329 |                  96 | 2026-09-30 07:43:27 | wet_parchment |         3 |          154.42 | received
 DLV-20260930-000260 |  215048 |                 144 | 2026-09-30 15:14:37 | cherry        |         3 |          149.08 | accepted
 DLV-20260930-000217 |   91444 |                  52 | 2026-09-30 14:02:43 | wet_parchment |         2 |          132.86 | received
 DLV-20260930-000237 |  125199 |                  46 | 2026-09-30 14:45:02 | wet_parchment |         2 |          128.69 | received
 DLV-20260930-000071 |  125140 |                 124 | 2026-09-30 08:25:30 | cherry        |         2 |          123.86 | settled
 DLV-20260930-000003 |  228920 |                  80 | 2026-09-30 06:04:40 | wet_parchment |         2 |          112.33 | settled
 DLV-20260930-000100 |  151444 |                  11 | 2026-09-30 09:49:19 | cherry        |         2 |          106.62 | accepted
 DLV-20260930-000019 |  192605 |                 147 | 2026-09-30 06:42:39 | wet_parchment |         2 |          106.26 | received
 DLV-20260930-000280 |  228280 |                   8 | 2026-09-30 16:07:06 | cherry        |         2 |           99.14 | received
 DLV-20260930-000297 |   49306 |                  67 | 2026-09-30 16:46:11 | cherry        |         2 |           98.35 | received
 DLV-20260930-000147 |   77310 |                 103 | 2026-09-30 11:17:45 | wet_parchment |         1 |           66.42 | rejected
 DLV-20260930-000037 |  220317 |                   2 | 2026-09-30 07:22:30 | wet_parchment |         1 |           64.16 | settled
(22 filas)
**/
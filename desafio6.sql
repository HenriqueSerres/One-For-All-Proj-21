SELECT
   MIN(pl.value) AS 'faturamento_minimo',
   MAX(pl.value) AS 'faturamento_maximo',
   ROUND(AVG(pl.value), 2) AS 'faturamento_medio',
   SUM(pl.value) AS 'faturamento_total'
FROM 
   Plan AS pl
JOIN
   Users AS us
ON pl.plan_id = us.plan_id;
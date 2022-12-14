-- Databricks notebook source
SELECT * FROM silver_olist.pedido

WHERE (descSituacao = 'shipped')
AND (year(dtPedido) = '2018' OR year(dtPedido) = '2017')




-- COMMAND ----------

SELECT * FROM silver_olist.pedido

WHERE (descSituacao = 'shipped')
AND (year(dtPedido) IN ('2017', '2018'))


-- COMMAND ----------

SELECT * FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30

-- COMMAND ----------

SELECT *,
       datediff(dtEstimativaEntrega, dtAprovado) AS dt_AprovadoEntrega
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) >= 30

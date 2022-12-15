-- Databricks notebook source
SELECT 
  count(*) AS nrLinhasNaoNulas,
  count(idCliente) AS nrIdClienteNaoNulo,
  count (distinct idCliente) AS nrIdClienteDsitintos
FROM silver_olist.cliente

-- COMMAND ----------

-- contar quantas pessoas moram em determinada cidade
SELECT 
  count(*) AS qtLinhas,
  count(distinct idClienteUnico) AS qtClientesUnicos 
FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente', 'sao jose do rio preto')

-- COMMAND ----------

SELECT 
    AVG(vlPreco) AS mediaPreco,
    MAX(vlPreco) AS maxPreco,
    MIN(vlPreco) AS minPreco,
    AVG(vlFrete) AS mediaFrete,
    MAX(vlFrete) AS maxFrete,
    MIN(vlFrete) AS minFrete

FROM silver_olist.item_pedido

-- COMMAND ----------



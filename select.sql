-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- leia-se: selecione tudo da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
        descSituacao

FROM silver_olist.pedido
LIMIT 5

-- Leia-se: selecione as colunas da tabela silver_olist.pedido, e retorne apenas 5 linhas aleatórias

-- COMMAND ----------

SELECT *, 
      datediff(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega
      
FROM silver_olist.pedido

-- Leia-se: selecione todas as colunas e mostre uma nova coluna com a diferenca entre dtEntregue e dtEstimativaEntrega, com a coluna nomeada por qtDiasPromessaEntrega

-- Databricks notebook source
-- DBTITLE 1,01 Selecionar todos os clientes paulistanos
-- Selecionar todos os clientes paulistanos 

SELECT *
FROM silver_olist.cliente

  WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- DBTITLE 1,02 Selecione todos os clientes paulistas
-- Selecione todos os clientes paulistas
SELECT * 
FROM silver_olist.cliente 
WHERE descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,03 Selecione todos os vendedores cariocas e paulistas 
-- Selecione todos os vendedores cariocas e paulistas 
SELECT * 
FROM silver_olist.vendedor
  WHERE descCidade = 'rio de janeiro'
  OR descUF = 'SP'

-- COMMAND ----------

-- Selecione todos os produtos de perfumaria e bebes com altura maior de 5cm

SELECT * 

FROM silver_olist.produto

WHERE descCategoria IN ('perfumaria', 'bebes')
AND vlAlturaCm > 5

-- COMMAND ----------



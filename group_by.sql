-- Databricks notebook source
SELECT 
  descUF,
  count (*) AS contUF,
  count(distinct idClienteUnico) AS contClienteUnico
  
FROM silver_olist.cliente
GROUP BY descUF

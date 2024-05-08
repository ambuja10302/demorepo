-- Databricks notebook source
-- MAGIC %python
-- MAGIC dbutils.help()

-- COMMAND ----------



-- COMMAND ----------

-- MAGIC %python
-- MAGIC df=dbutils.fs.ls('/FileStore/tables/')
-- MAGIC display(df)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df1=spark.read.option('header',True).csv('dbfs:/FileStore/tables/employee.csv')
-- MAGIC display(df1)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df1.createOrReplaceTempView('tempview')
-- MAGIC

-- COMMAND ----------

select * from tempview

-- COMMAND ----------

-- MAGIC %python
-- MAGIC
-- MAGIC df=dbutils.fs.ls('dbfs:/FileStore/tables/')
-- MAGIC display(df)

/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
SELECT *
  FROM [Hospital].[dbo].[Diseases]
  where Симптомы like '%тошнота%';
use AdventureWorks2012
go


SELECT  
	d.ProductID as PrevProduct
	,d2.ProductID as PostProduct
	,count(*) as Linkage
  FROM [AdventureWorks2012].[Sales].[SalesOrderDetail] d
  inner join [AdventureWorks2012].[Sales].[SalesOrderDetail] d2
  ON d.SalesOrderID = d2.SalesOrderID
  AND d.ProductID <> d2.ProductID
  -- AND d.ProductID > d2.ProductID
  group by d.ProductID
	,d2.ProductID
order by Linkage desc

/*
  select top 100 * FROM [AdventureWorks2012].[Sales].[SalesOrderDetail] d
  */

  select * from Production.Product
  where ProductID in (870,871)
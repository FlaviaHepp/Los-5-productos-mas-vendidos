USE AdventureWorks2019
GO

--Cuales son los 5 productos más vendidos

SELECT TOP 5 pp.ProductID, pp.Name AS Producto, COUNT(ss.ProductID) as Cantidad_Vendido
FROM Production.Product pp
INNER JOIN Sales.SalesOrderDetail ss
ON pp.ProductID = ss.ProductID
GROUP BY ss.ProductID, pp.Name, pp.ProductID
ORDER BY COUNT(ss.ProductID) DESC
/** FUNCTION GROUP BY **/

/** How many people have the same middlename, Group them by Middle Name.**/
SELECT *
FROM person.person

SELECT middlename, COUNT (middlename) AS Resultado
FROM Person.Person
GROUP By MiddleName

/** How is the quantity avarage by each product sold. **/
SELECT * 
FROM Sales.SalesOrderDetail

SELECT ProductID, AVG (OrderQty) AS MEDIA
FROM Sales.SalesOrderDetail
GROUP BY ProductID

/**Which ones are the top 10 values sale, by product, from de more expansive to cheaper**/ 
SELECT * 
FROM Sales.SalesOrderDetail

SELECT TOP 10 ProductID, SUM (linetotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
Order by SUM (Linetotal) desc

/** How many products and how is their avarage quantity in our Work Orders, Group by ProductId**/	 
SELECT * 
FROM Production.workorder

SELECT ProductID, COUNT (ProductID) as TOTAL,
AVG(orderqty) as media 
FROM Production.WorkOrder
GROUP BY ProductID
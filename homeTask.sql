SELECT * FROM Sales.Customer

GO

SELECT * from Sales.Store 
ORDER BY Name

GO

SELECT TOP 10 * FROM HumanResources.Employee 
WHERE BirthDate > '1989-09-28'  

GO

SELECT NationalIDNumber, LoginID, JobTitle 
FROM HumanResources.Employee 
WHERE LoginID LIKE '%0' 
ORDER BY JobTitle

GO

SELECT * FROM Person.Person 
WHERE ModifiedDate BETWEEN '2008-01-01' AND '2008-12-31'
AND MiddleName IS NOT NULL
AND Title IS NULL

GO

SELECT DISTINCT d.Name AS 'DepartmentName'
FROM HumanResources.Department d
FULL JOIN HumanResources.EmployeeDepartmentHistory e ON d.DepartmentID = e.DepartmentID WHERE e.EndDate IS NULL

GO

SELECT SUM(CommissionPct) FROM SALES.SalesPerson
GROUP BY TerritoryID
HAVING SUM(CommissionPct) > 0

GO

SELECT * FROM HumanResources.Employee
WHERE VacationHours = (SELECT MAX(VacationHours) FROM HumanResources.Employee)

GO

SELECT * FROM HumanResources.Employee
WHERE HumanResources.Employee.JobTitle 
IN ('Sales Representative', 'Network Administrator', 'Network Manager')

GO

SELECT * FROM HumanResources.Employee he
INNER JOIN Purchasing.PurchaseOrderHeader po
on he.BusinessEntityID = po.EmployeeID

GO
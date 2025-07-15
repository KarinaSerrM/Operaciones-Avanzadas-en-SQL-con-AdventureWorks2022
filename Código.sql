-- 1) Nombres de los empleados (FirstName y LastName) y el título de su puesto (JobTitle)
SELECT *
FROM HumanResources.Employee e;

SELECT *
FROM Person.Person P;

SELECT 
    p.FirstName,
    p.LastName,
    e.JobTitle
FROM 
    Person.Person p
INNER JOIN 
    HumanResources.Employee e
ON 
    p.BusinessEntityID = e.BusinessEntityID;

--2)LEFT JOIN entre Sales.Customer y Person.Person
SELECT 
    c.CustomerID,
    p.FirstName,
    p.LastName
FROM 
    Sales.Customer c
LEFT JOIN 
    Person.Person p
ON 
    c.PersonID = p.BusinessEntityID;

--3) RIGHT JOIN entre Sales.SalesOrderHeader y Sales.Customer
SELECT 
    SOH.SalesOrderID, 
    SOH.CustomerID
FROM 
    Sales.SalesOrderHeader AS SOH
RIGHT JOIN 
    Sales.Customer AS C
ON 
    SOH.CustomerID = C.CustomerID;

--4) FULL OUTER JOIN entre Production.Product y Production.ProductReview
SELECT 
    P.Name, 
    PR.Comments
FROM 
    Production.Product AS P
FULL OUTER JOIN 
    Production.ProductReview AS PR
ON 
    P.ProductID = PR.ProductID;


--5) CROSS JOIN entre Production.Product y Production.ProductCategory
SELECT 
    p.Name AS ProductName,
    pc.Name AS CategoryName
FROM 
    Production.Product p
CROSS JOIN 
    Production.ProductCategory pc;

-- 6) UNION y UNION ALL
SELECT Name
FROM Production.Product
UNION
SELECT Name
FROM Production.ProductModel;

SELECT Name
FROM Production.Product
UNION ALL
SELECT Name
FROM Production.ProductModel;

-- 7) CASE y COALESCE en HumanResources.Employee
SELECT 
    BusinessEntityID,
    JobTitle,
    CASE 
        WHEN JobTitle LIKE '%Manager%' THEN 'Manager'
        ELSE COALESCE(JobTitle, 'No Title')
    END AS JobTitleStatus
FROM 
    HumanResources.Employee;

--8) ISNULL en Sales.SalesPerson
SELECT 
    BusinessEntityID,
    SalesQuota,
    ISNULL(CAST(SalesQuota AS VARCHAR), 'No Quota') AS SalesQuotaStatus
FROM 
    Sales.SalesPerson;
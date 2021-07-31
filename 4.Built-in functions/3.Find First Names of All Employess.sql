SELECT [Firstname]
    FROM [Employees]
    WHERE [Employees].[DepartmentID] IN (3,10)
    AND DATEPART(YEAR,[HireDate]) >= 1995
    AND DATEPART(YEAR,[HireDate]) <= 2005
SELECT [FirstName],[LastName],[HireDate],D.[Name] as DepartmentName
	FROM Employees AS E
	JOIN Departments AS D
	ON E.[DepartmentID] = D.[DepartmentID]
		WHERE D.[Name] IN ('Sales','Finance')
		AND
		HireDate > '1999-1-1'
			ORDER BY [HireDate]
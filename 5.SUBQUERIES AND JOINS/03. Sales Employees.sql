SELECT [EmployeeId],[FirstName],[LastName],D.[Name]
	FROM [Employees] as E
	JOIN [Departments] as D
	ON E.[DepartmentID] = d.[DepartmentID]
		WHERE D.[Name] = 'Sales'
			ORDER BY E.[EmployeeID]
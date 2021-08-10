SELECT TOP(5) [EmployeeId],[FirstName],[Salary],D.[Name] as DepartmentName
	FROM [Employees] as E
	JOIN [Departments] as D
	ON E.[DepartmentID] = D.[DepartmentID]
		WHERE E.[Salary] > 15000
			ORDER BY D.DepartmentID
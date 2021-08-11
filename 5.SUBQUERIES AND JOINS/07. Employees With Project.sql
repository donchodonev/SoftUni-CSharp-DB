SELECT TOP (5) E.[EmployeeID],E.[FirstName],P.[Name] as ProjectName
	FROM [Employees] as E
	FULL JOIN [EmployeesProjects] as EP
	ON EP.[EmployeeID] = E.[EmployeeID]
	LEFT JOIN [Projects] as P
	ON EP.[ProjectID] = P.[ProjectID]
		WHERE P.[StartDate] > '2002-08-13'
			ORDER BY EP.EmployeeID
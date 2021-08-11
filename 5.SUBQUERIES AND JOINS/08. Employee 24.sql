SELECT e.[EmployeeID],
	e.[FirstName],
	CASE
		WHEN p.[StartDate] >= '2005' THEN NULL
		ELSE p.Name
	END as ProjectName
	FROM [Employees] AS e
	FULL JOIN [EmployeesProjects] as ep
	ON e.[EmployeeID] = ep.[EmployeeID]
	FULL JOIN [Projects] as p
	ON ep.[ProjectID] = p.[ProjectID]
		WHERE E.[EmployeeID] = 24

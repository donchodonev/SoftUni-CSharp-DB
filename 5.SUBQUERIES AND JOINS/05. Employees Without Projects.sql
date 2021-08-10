SELECT TOP(3) E.[EmployeeID], FirstName FROM EmployeesProjects AS ep
	FULL JOIN Employees AS e
	ON ep.[EmployeeID] = e.EmployeeID
		WHERE EP.[ProjectID] IS NULL
			ORDER BY EP.[EmployeeID]
SELECT e.[EmployeeId], e.[FirstName],E.[ManagerID],em.[FirstName]
	FROM [Employees] as E
	JOIN [Employees] as EM
	ON e.[ManagerID] = em.[EmployeeID]
WHERE em.[EmployeeID] IN (3,7)
	ORDER BY E.EmployeeID
SELECT TOP(50) E.[EmployeeID],
	CONCAT(E.[FirstName], ' ',E.[LASTNAME]) AS EmployeeName,
	CONCAT(EM.[FirstName], ' ',EM.[LASTNAME]) AS ManagerName,
	D.[Name] AS DepartmentName
	FROM [Employees] AS E
	JOIN [Employees] AS EM
	ON E.[ManagerID] = EM.[EmployeeID]
	JOIN [Departments] AS D
	ON D.[DepartmentID] = E.[DepartmentID]
	ORDER BY E.[EmployeeID]

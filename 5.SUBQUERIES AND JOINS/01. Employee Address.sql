SELECT Top(5) [EmployeeId], [JobTitle],E.[AddressId],A.AddressText
	FROM [EMPLOYEES] AS E
		JOIN [ADDRESSES] AS A
		ON E.[AddressID] = A.[AddressID]
			ORDER BY E.[AddressID]
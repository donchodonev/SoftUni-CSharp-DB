SELECT TOP(50) [FirstName],[LastName],T.[Name],A.[AddressText]
	FROM [Employees] AS E
		JOIN [Addresses] AS A
		ON E.[AddressId] = A.[AddressId]
		JOIN [Towns] AS T
		ON A.[TownID] = T.[TownID]
			ORDER BY [FirstName],[LastName]
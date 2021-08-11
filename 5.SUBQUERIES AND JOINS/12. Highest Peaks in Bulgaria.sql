SELECT C.[CountryCode], M.[MountainRange], P.[PeakName], P.[Elevation]
	FROM [Countries] as C
	JOIN [MountainsCountries] as MC
	ON C.[CountryCode] = MC.[CountryCode]
	JOIN [Mountains] AS M
	ON MC.MountainId = M.[Id]
	JOIN [Peaks] AS P
	ON M.Id = p.[MountainId]
WHERE C.CountryCode = 'BG'
AND P.[Elevation] > 2835
	ORDER BY P.[Elevation] DESC
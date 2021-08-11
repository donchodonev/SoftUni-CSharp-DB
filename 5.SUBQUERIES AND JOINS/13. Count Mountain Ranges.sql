SELECT C.[CountryCode], COUNT(M.MountainRange) as MountainRanges
	FROM Countries as C
	JOIN [MountainsCountries] as MC
	ON C.[CountryCode] = MC.[CountryCode]
	JOIN [Mountains] AS M
	ON MC.[MountainId] = M.[Id]
WHERE C.[CountryCode] IN ('BG','RU','US')
	GROUP BY C.[CountryCode]

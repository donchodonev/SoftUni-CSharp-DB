SELECT DISTINCT COUNT(C.CountryCode) - COUNT(MC.CountryCode)
	FROM MountainsCountries as MC
	FULL JOIN Countries AS C
	ON c.CountryCode = MC.CountryCode
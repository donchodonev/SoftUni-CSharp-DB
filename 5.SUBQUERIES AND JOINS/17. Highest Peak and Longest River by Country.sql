SELECT TOP(5) C.CountryName, MAX(P.ELEVATION) AS HighestPeak, MAX(R.LENGTH) as LongestRiver
	FROM Countries AS C
	FULL JOIN MountainsCountries AS MC
	ON C.CountryCode = MC.CountryCode
	FULL JOIN Mountains AS M
	ON MC.MountainId = M.Id
	FULL JOIN Peaks AS P
	ON M.Id = P.MountainId
	FULL JOIN CountriesRivers as CR
	ON C.CountryCode = CR.CountryCode
	FULL JOIN Rivers as R
	ON CR.RiverId = R.Id
GROUP BY CountryName
ORDER BY HighestPeak DESC, LongestRiver DESC, C.CountryName
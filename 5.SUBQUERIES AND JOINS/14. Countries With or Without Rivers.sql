SELECT TOP(5) COU.CountryName, R.RiverName
	FROM Countries AS COU
	FULL JOIN CountriesRivers AS CR
	ON COU.CountryCode = CR.CountryCode
	FULL JOIN Rivers AS R
	ON CR.RiverId = R.Id
WHERE COU.ContinentCode = 'AF'
	ORDER BY COU.CountryName
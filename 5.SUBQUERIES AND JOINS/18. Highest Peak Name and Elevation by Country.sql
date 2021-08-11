SELECT TOP(5) tmp.CountryName,tmp.[Highest Peak Name],tmp.[Highest Peak Elevation],tmp.Mountain
	FROM
	(SELECT CountryName,
	ISNULL(P.PeakName,'(no highest peak)') AS [Highest Peak Name],
	ISNULL(MAX(P.ELEVATION),0) as [Highest Peak Elevation],
	ISNULL(M.MountainRange,'(no mountain)') as Mountain,
	DENSE_RANK() OVER (PARTITION BY CountryName ORDER BY MAX(p.ELEVATION) DESC) AS Ranked
	FROM Countries AS C
	LEFT JOIN MountainsCountries AS MC
	ON C.CountryCode = MC.CountryCode
	LEFT JOIN Mountains AS M
	ON MC.MountainId = M.Id
	LEFT JOIN Peaks AS P
	ON M.Id = P.MountainId
GROUP BY CountryName, P.PeakName, M.MountainRange 
) as tmp
WHERE Ranked = 1
ORDER BY tmp.CountryName,tmp.[Highest Peak Name]
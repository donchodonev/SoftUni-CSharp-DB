SELECT ContinentCode, CurrencyCode,Total
FROM
(SELECT c.ContinentCode,
	   CurrencyCode,
	   COUNT(c.CurrencyCode) AS Total,
	   DENSE_RANK() OVER (PARTITION BY c.ContinentCode ORDER BY COUNT(CurrencyCode) DESC) as Rank
	FROM Countries as C
GROUP BY ContinentCode,CurrencyCode) as tmp
WHERE RANK = 1 AND TOTAL > 1
ORDER BY ContinentCode
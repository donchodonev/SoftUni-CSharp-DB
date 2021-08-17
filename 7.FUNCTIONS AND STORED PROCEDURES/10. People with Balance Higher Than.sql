CREATE PROCEDURE usp_GetHoldersWithBalanceHigherThan(@Balance DECIMAL (38,6))
AS
SELECT FirstName AS [First Name], LastName AS [Last Name] FROM Accounts AS A
	JOIN AccountHolders AS AH ON AH.Id = A.AccountHolderId
	GROUP BY AccountHolderId, FirstName, LastName
	HAVING SUM(BALANCE) > @Balance
ORDER BY FirstName,LastName
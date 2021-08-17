CREATE PROCEDURE usp_CalculateFutureValueForAccount(@AccountID INT,@InterestRate FLOAT)
AS
SELECT  A.Id, 
	    AH.FirstName,
		AH.LastName,
		A.Balance AS [Current Balance],
		dbo.ufn_CalculateFutureValue(A.Balance,@InterestRate,5) AS [Balane in 5 years]  FROM AccountHolders AS AH
JOIN Accounts AS A ON A.AccountHolderId = AH.Id
	WHERE A.Id = @AccountID
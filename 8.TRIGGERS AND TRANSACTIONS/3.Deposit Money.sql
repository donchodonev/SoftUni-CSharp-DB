CREATE PROCEDURE usp_DepositMoney (@AccountId INT, @MoneyAmount DECIMAL (38,4))
AS
IF(@MoneyAmount <= 0)
	BEGIN
		THROW 50001,'Amount cannot be less or equal to 0', 1;
		RETURN
	END

UPDATE Accounts
SET Balance += @MoneyAmount
WHERE Id = @AccountId
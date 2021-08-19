CREATE PROCEDURE usp_WithdrawMoney (@AccountId INT, @MoneyAmount DECIMAL (38,4))
AS
IF(@MoneyAmount <= 0)
	BEGIN
		THROW 50001,'Amount cannot be less or equal to 0', 1;
	END

IF((SELECT BALANCE FROM Accounts WHERE Id = @AccountId) <= 0)
BEGIN
	THROW 50001,'Balance cannot be less or equal to 0', 1;
END

UPDATE Accounts
SET Balance -= @MoneyAmount
WHERE Id = @AccountId
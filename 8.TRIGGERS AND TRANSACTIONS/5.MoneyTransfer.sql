CREATE PROCEDURE usp_TransferMoney (@SenderId INT, @ReceiverID INT, @MoneyAmount DECIMAL (38,4))
AS
BEGIN TRANSACTION

IF(@MoneyAmount <= 0)
THROW 50001,'Amount cannot be less or equal to 0', 1

BEGIN TRY
	EXEC usp_WithdrawMoney @SenderId, @MoneyAmount
	EXEC usp_DepositMoney @ReceiverID, @MoneyAmount
END TRY

BEGIN CATCH
	ROLLBACK
END CATCH

COMMIT
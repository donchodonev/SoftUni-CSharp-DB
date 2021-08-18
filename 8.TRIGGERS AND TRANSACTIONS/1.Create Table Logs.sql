CREATE TRIGGER tr_LogAccountChanges ON Accounts FOR UPDATE
AS
INSERT INTO Logs(AccountId, OldSum, NewSum)

SELECT I.Id, D.Balance, I.Balance FROM inserted AS I
JOIN deleted AS D ON I.Id = D.Id
	AND I.Balance != D.Balance
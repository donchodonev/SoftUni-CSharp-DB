CREATE TRIGGER tr_SendEmailOnNewRecord ON Logs FOR INSERT
AS

INSERT INTO NotificationEmails(Recipient, Subject,Body)
SELECT AccountId,
CONCAT_WS(' ','Balance change for account:', CONVERT(VARCHAR,AccountId)),
CONCAT_WS(' ','On',CONVERT(VARCHAR, GETDATE(), 0),
'your balance was changed from',
CONVERT(VARCHAR,OldSum),
CONVERT(VARCHAR,NewSum)
) FROM inserted
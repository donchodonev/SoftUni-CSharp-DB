UPDATE Payments
SET TAXRATE = TAXRATE - (TAXRATE / 100.00) * 3
SELECT TAXRATE FROM Payments
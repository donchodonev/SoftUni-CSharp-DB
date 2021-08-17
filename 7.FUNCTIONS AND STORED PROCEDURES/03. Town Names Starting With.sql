CREATE PROCEDURE usp_GetTownsStartingWith(@StartingString VARCHAR(50))
AS
SELECT Name
	FROM Towns
	WHERE Name LIKE (@StartingString + '%')
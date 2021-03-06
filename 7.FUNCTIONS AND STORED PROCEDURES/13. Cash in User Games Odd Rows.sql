CREATE FUNCTION ufn_CashInUsersGames(@gameName VARCHAR(100))
RETURNS TABLE
AS
RETURN
(
SELECT SUM(Cash) AS SumCash FROM
(SELECT ROW_NUMBER() OVER (ORDER BY Cash DESC) AS RowNum, CASH FROM UsersGames AS UG
JOIN Games AS G ON G.ID = UG.GameId
WHERE Name = @gameName) as k
WHERE RowNum % 2 != 0
)


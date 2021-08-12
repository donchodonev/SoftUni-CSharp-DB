SELECT DISTINCT LEFT(FirstName,1)
	FROM WizzardDeposits
	GROUP BY FirstName, DepositGroup
HAVING DepositGroup = 'Troll Chest'
SELECT SUM([Guest Wizard].DepositAmount - [Host Wizard].DepositAmount)
	FROM WizzardDeposits AS [Host Wizard]
	JOIN WizzardDeposits AS [Guest Wizard] ON [Host Wizard].Id = [Guest Wizard].Id + 1


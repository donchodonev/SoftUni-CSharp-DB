SELECT TOP (10)  FirstName, LastName, E.DepartmentID
	FROM Employees as E
	WHERE Salary > (SELECT AVG(Salary)
						FROM Employees
						WHERE E.DepartmentID = DepartmentID
						GROUP BY DepartmentID
					)
ORDER BY E.DepartmentID

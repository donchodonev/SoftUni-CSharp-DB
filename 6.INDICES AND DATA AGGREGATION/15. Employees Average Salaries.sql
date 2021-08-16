SELECT *
	INTO MyEmployees
	FROM Employees
WHERE Salary > 30000

DELETE FROM MyEmployees
WHERE ManagerID = 42

UPDATE MyEmployees
SET Salary += 5000
WHERE DepartmentID = 1

SELECT DepartmentID,AVG(Salary) as AverageSalary
	FROM MyEmployees
GROUP BY DepartmentID
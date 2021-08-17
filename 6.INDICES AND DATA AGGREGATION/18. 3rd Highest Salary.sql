SELECT DISTINCT DepartmentId, Salary AS ThirdHighestSalary FROM
(SELECT DepartmentID, Salary, DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY SALARY DESC) AS ThirdHighestSalary
	FROM Employees) AS TH
WHERE ThirdHighestSalary = 3

CREATE PROCEDURE usp_EmployeesBySalaryLevel
(@SalaryLevel VARCHAR(MAX))
AS
SELECT FirstName, LastName
	FROM Employees
	WHERE dbo.ufn_GetSalaryLevel(Salary) = @SalaryLevel

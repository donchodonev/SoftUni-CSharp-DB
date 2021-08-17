CREATE PROCEDURE usp_GetEmployeesSalaryAboveNumber
(@SalaryAmount DECIMAL(18,4))
AS
SELECT FirstName, LastName
	FROM Employees
	WHERE Salary >= @SalaryAmount
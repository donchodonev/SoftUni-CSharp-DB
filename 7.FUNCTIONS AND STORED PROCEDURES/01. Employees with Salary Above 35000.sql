CREATE OR ALTER PROC usp_GetEmployeesSalaryAbove35000
AS 
SELECT FirstName AS [First Name], LastName AS [LastName]
	FROM Employees
WHERE Salary > 35000

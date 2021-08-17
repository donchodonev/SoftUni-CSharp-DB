CREATE PROCEDURE usp_GetEmployeesFromTown(@TownName VARCHAR(50))
AS
SELECT FirstName, LastName FROM Employees
JOIN Addresses
ON Addresses.AddressID = Employees.AddressID
JOIN towns 
ON Addresses.TownID = Towns.TownID
WHERE Towns.Name = @TownName
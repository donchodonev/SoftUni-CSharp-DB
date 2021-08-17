CREATE PROCEDURE usp_DeleteEmployeesFromDepartment (@DepartmentID INT)
AS

ALTER TABLE Departments
ALTER COLUMN ManagerID INT NULL

DELETE FROM EmployeesProjects
WHERE EmployeeID IN (SELECT EmployeeID FROM Employees WHERE DepartmentID = @DepartmentID)

UPDATE Employees
SET ManagerID = NULL
WHERE EmployeeID IN (SELECT EmployeeID FROM Employees WHERE DepartmentID = @DepartmentID)

UPDATE Employees
SET ManagerID = NULL
WHERE ManagerID IN (SELECT EmployeeID FROM Employees WHERE DepartmentID = @DepartmentID)

UPDATE Departments
SET ManagerID = NULL
WHERE ManagerID IN (SELECT EmployeeID FROM Employees WHERE DepartmentID = @DepartmentID)

DELETE FROM Employees
WHERE DepartmentID = @DepartmentID

DELETE FROM Departments
WHERE DepartmentID = @DepartmentID

SELECT COUNT(*) FROM Employees WHERE DepartmentID = @DepartmentID
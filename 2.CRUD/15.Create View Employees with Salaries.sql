-- Write a SQL query to create a view V_EmployeesSalaries with first name, last name and salary for each employee.

CREATE VIEW V_EmployeesSalaries
AS
SELECT [FIRSTNAME],LASTNAME, SALARY FROM Employees
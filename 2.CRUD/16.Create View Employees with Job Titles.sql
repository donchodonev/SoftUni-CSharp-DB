CREATE VIEW V_EmployeeNameJobTitle
AS
SELECT [FIRSTNAME] + ' ' + ISNULL(MiddleName,'') + ' ' + [LASTNAME]AS [Full Name] ,
JobTitle AS [Job Title]
FROM [Employees]

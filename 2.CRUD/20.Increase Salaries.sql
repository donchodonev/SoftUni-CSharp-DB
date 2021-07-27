UPDATE [Employees]
SET SALARY = SALARY + ((Salary / 100) * 12)
    WHERE [DepartmentID] IN (1,2,4,11)
SELECT [SALARY] FROM [Employees]
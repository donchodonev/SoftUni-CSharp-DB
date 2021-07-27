-- Write a SQL query to sort all records in the Employees table by the following criteria: 
-- •	First by salary in decreasing order
-- •	Then by first name alphabetically
-- •	Then by last name descending
-- •	Then by middle name alphabetically

SELECT * FROM [Employees]
ORDER BY [Salary] DESC,[FirstName],[LastName] DESC,[MiddleName]
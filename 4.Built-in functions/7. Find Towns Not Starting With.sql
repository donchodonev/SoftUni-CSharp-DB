SELECT *
    FROM [Towns]
    WHERE LEFT([Name],1) NOT IN ('r','b','d')
    ORDER BY [Name]
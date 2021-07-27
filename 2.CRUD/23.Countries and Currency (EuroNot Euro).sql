SELECT [CountryName],[CountryCode],
    CASE
        WHEN [CurrencyCode] = 'EUR' THEN 'Euro'
        ELSE 'Not Euro'
    END AS [Euro Or Not]
FROM Countries
ORDER BY [CountryName]
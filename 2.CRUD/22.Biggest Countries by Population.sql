--  Find the 30 biggest countries by population from Europe.
--  Display the country name and population.
--  Sort the results by population (from biggest to smallest), then by country alphabetically.
SELECT TOP(30) [CountryName], [Population] FROM [Countries]
    WHERE [ContinentCode] = 'EU'
    ORDER BY [Population] DESC, [CountryName]

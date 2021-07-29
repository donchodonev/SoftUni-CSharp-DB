SELECT MountainRange, PeakName, Elevation
FROM Peaks
Join Mountains ON Peaks.MountainId = Mountains.Id
WHERE MountainRange = 'Rila'
ORDER BY Elevation DESC
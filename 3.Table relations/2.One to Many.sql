CREATE TABLE Models
(
    ModelID INT PRIMARY KEY IDENTITY(101,1),
    Name VARCHAR(20),
    ManufacturerID INT NOT NULL
)

CREATE TABLE Manufacturers(
    ManufacturerID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(50) NOT NULL,
    EstablishedOn DATE NOT NULL
)

INSERT INTO [Models]([Name],[ManufacturerID])
VALUES
('X1',1),
('i6',1),
('Model S',2),
('Model X',2),
('Model 3',2),
('Nova',3)

INSERT INTO [Manufacturers]([Name],[EstablishedOn])
VALUES
('BMW','1916-07-03'),
('Tesla','2003-01-01'),
('Lada','1966-05-01')

ALTER TABLE [Models]
ADD FOREIGN KEY (ManufacturerID) REFERENCES [Manufacturers]([ManufacturerID])
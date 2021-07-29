CREATE TABLE Persons(
    PersonID INT PRIMARY KEY IDENTITY NOT NULL,
    FirstName VARCHAR(20) NOT NULL,
    Salary DECIMAL(8,2),
    PassportID INT NOT NULL
)

CREATE TABLE Passports(
    PassportID INT PRIMARY KEY IDENTITY(101,1),
    PassportNumber VARCHAR(8) NOT NULL
)

INSERT INTO [Persons]([FirstName],[Salary],[PassportID])
VALUES
('Roberto',43300.00,102),
('Tom',56100.00,103),
('Yana',60200.00,101)

INSERT INTO [Passports]([PassportNumber])
VALUES
('N34FG21B'),
('K65LO4R7'),
('ZE657QP2')

ALTER TABLE [Persons]
ADD FOREIGN KEY ([PassportID]) REFERENCES [Passports]([PassportID])

ALTER TABLE [Persons]
ADD UNIQUE([PassportID])

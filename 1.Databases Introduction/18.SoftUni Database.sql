-- CREATE DATABASE SoftUni

-- USE SoftUni

CREATE TABLE Towns(
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    Name NVARCHAR(150) NOT NULL
)

CREATE TABLE Addresses(
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    AddressText NVARCHAR(150),
    TownId INT NOT NULL FOREIGN KEY REFERENCES Towns(Id)
)

CREATE TABLE Departments(
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    Name NVARCHAR(100) NOT NULL,
)

CREATE TABLE Employees(
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    FirstName NVARCHAR(20) NOT NULL,
    MiddleName NVARCHAR(20) NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    JobTitle NVARCHAR(30) NOT NULL,
    DepartmentId INT NOT NULL FOREIGN KEY REFERENCES Departments(Id),
    HireDate DATE NOT NULL,
    Salary DECIMAL (12,2) NOT NULL,
    AddressId INT NOT NULL FOREIGN KEY REFERENCES Addresses(Id)
)
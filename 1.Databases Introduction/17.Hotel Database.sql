CREATE DATABASE Hotel

USE Hotel

CREATE TABLE Employees
(
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    Title VARCHAR(30) NOT NULL
)

CREATE TABLE Customers
(
    AccountNumber INT PRIMARY KEY IDENTITY NOT NULL,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    PhoneNumber INT,
    EmergencyName VARCHAR(100),
    EmergencyNummber INT,
    Notes VARCHAR(MAX)
)

CREATE TABLE RoomStatus
(
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    RoomStatus BIT NOT NULL,
    Notes VARCHAR(MAX)
)

CREATE TABLE RoomTypes
(
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    RoomType VARCHAR(20) NOT NULL,
    Notes VARCHAR(MAX)
) 

CREATE TABLE BedTypes
(
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    BedType VARCHAR(100) NOT NULL,
    Notes VARCHAR(MAX)
)

CREATE TABLE Rooms
(
    RoomNumber INT PRIMARY KEY IDENTITY(100,10) NOT NULL,
    RoomType VARCHAR(20) NOT NULL,
    BedType VARCHAR(20) NOT NULL,
    Rate DECIMAL(15,2) NOT NULL,
    RoomStatus VARCHAR(20) NOT NULL,
    Notes VARCHAR(MAX)
)

CREATE TABLE Payments
(
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    EmployeeId INT NOT NULL,
    PaymentDate DATETIME2 NOT NULL,
    AccountNumber INT NOT NULL,
    FirstDateOccupied DATETIME2 NOT NULL,
    LastDateOccupied DATETIME2 NOT NULL,
    TotalDays INT NOT NULL,
    AmountCharged DECIMAL(15,2) NOT NULL,
    TaxRate DECIMAL(5,2) NOT NULL,
    TaxAmount DECIMAL(5,2) NOT NULL,
    PaymentTotal DECIMAL(15,2) NOT NULL,
    Notes VARCHAR(MAX)
)

CREATE TABLE Occupancies
(
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    EmployeeId INT NOT NULL,
    DateOccupied DATETIME2 NOT NULL,
    AccountNumber INT NOT NULL,
    RoomNumber INT NOT NULL,
    RateApplied DECIMAL(15,2),
    PhoneCharge DECIMAL(15,2),
    NOTES VARCHAR(MAX)
)

INSERT INTO BedTypes(BedType)
VALUES
('BigBed'),
('BigBed'),
('BigBed')

INSERT INTO Customers(FirstName,LastName)
VALUES
('Ani','Banani'),
('Ani','Kapani'),
('Ani','Kalpazani')

INSERT INTO Employees(FirstName,LastName,Title)
VALUES
('Doncho','Huncho','CEO'),
('Doncho','Huncho','Software Developer'),
('Doncho','Huncho','Junior Janitor')

INSERT INTO Occupancies(EmployeeId,DateOccupied,AccountNumber,RoomNumber)
VALUES
(1,'2021-07-25',1,120),
(2,'2021-07-25',2,130),
(3,'2021-07-25',3,140)

INSERT INTO Payments(EmployeeId,PaymentDate,AccountNumber,FirstDateOccupied,LastDateOccupied
,TotalDays,AmountCharged,TaxRate,TaxAmount,PaymentTotal)
VALUES
(1,'2021-01-10',1,'2021-01-12','2021-01-14',2,123.25,20,50,173.15),
(1,'2021-01-10',1,'2021-01-12','2021-01-14',2,123.25,20,50,173.15),
(1,'2021-01-10',1,'2021-01-12','2021-01-14',2,123.25,20,50,173.15)

INSERT INTO Rooms(RoomType,BedType,Rate,RoomStatus)
VALUES
('Two persons','Double',15,1),
('Two persons','Double',15,1),
('Two persons','Double',15,1)

INSERT INTO RoomStatus(RoomStatus)
VALUES
(1),(0),(0)

INSERT INTO RoomTypes(RoomType)
VALUES

('Two-person'),
('Three-person'),
('House')
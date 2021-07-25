CREATE TABLE Categories
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    CategoryName VARCHAR(50) NOT NULL,
    DailyRate Decimal(15,2) NOT NULL,
    WeeklyRate Decimal(15,2) NOT NULL,
    WeekendRate Decimal(15,2) NOT NULL,
    MonthlyRate Decimal(15,2) NOT NULL
)

CREATE TABLE Cars
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    PlateNumber VARCHAR(15) NOT NULL,
    Manufacturer VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    CarYear INT NOT NULL,
    CategoryID INT NOT NULL,
    CONSTRAINT FK_Cars_CategoryId FOREIGN KEY(CategoryId)
    REFERENCES Categories(Id),
    Doors INT,
    Picture VARBINARY(MAX),
    Condition VARCHAR(100),
    Available BIT NOT NULL
)

CREATE TABLE Employees
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Title VARCHAR(50) NOT NULL,
    Notes VARCHAR(MAX)
)

CREATE TABLE Customers
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    DriverLicenseNumber INT NOT NULL,
    FullName VARCHAR(150) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    ZIPCode VARCHAR(50),
    Notes VARCHAR(MAX)
)


CREATE TABLE RentalOrders
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    EmployeeId INT NOT NULL,
    CONSTRAINT FK_RentalOrder_Employee FOREIGN KEY (EmployeeId)
    REFERENCES Employees(Id),
    CustomerId INT NOT NULL,
    CONSTRAINT FK_RentalOrder_Customer FOREIGN KEY (CustomerId)
    REFERENCES Customers(Id),
    CarId INT NOT NULL,
    CONSTRAINT FK_RentalOrder_CarId FOREIGN KEY(CarId)
    REFERENCES Cars(Id),
    TankLevel INT,
    KilometrageStart INT NOT NULL,
    KilometrageEnd INT NOT NULL,
    TotalKilometrage INT NOT NULL,
    StartDate DATETIME2 NOT NULL,
    EndDate DATETIME2 NOT NULL,
    TotalDays INT NOT NULL,
    RateApplied DECIMAL(15,2) NOT NULL,
    TaxRate DECIMAL(5,2) NOT NULL,
    OrderStatus VARCHAR(50) NOT NULL,
    Notes VARCHAR(MAX)
)


INSERT INTO Categories(CategoryName,DailyRate,WeeklyRate,WeekendRate,MonthlyRate)
VALUES
('Regular',1.50,10.50,5.50,300.00),
('Business',1.50,10.50,5.50,300.00),
('Family',1.50,10.50,5.50,300.00)

INSERT INTO Cars(PlateNumber,Manufacturer,Model,CarYear,CategoryID,Available)
VALUES
('PB6969CB','AUDI','A8',2008,2,1),
('PB6970CB','AUDI','A8',2008,2,1),
('PB6969CB','AUDI','A8',2008,2,1)

INSERT INTO Employees (FirstName,LastName,Title)
VALUES
('Goshko','Peshov','CEO'),
('Goshko','Peshov','Cleaner'),
('Goshko','Peshov','Assassin')

INSERT INTO Customers(DriverLicenseNumber,FullName,Address,City)
VALUES
(123456789,'Goshko Peshov Ivanov','Suglasie 2','Plovdiv'),
(123456789,'Goshko Peshov Ivanov','Suglasie 2','Plovdiv'),
(123456789,'Goshko Peshov Ivanov','Suglasie 2','Plovdiv')

INSERT INTO RentalOrders(EmployeeId,CustomerId,CarId,KilometrageStart,KilometrageEnd,TotalKilometrage,
StartDate,EndDate,TotalDays,RateApplied,TaxRate,OrderStatus)
VALUES
(1,1,2,100000,100500,500,'2021-03-15','2021-03-18',3,1.20,20,'COMPLETED'),
(1,1,2,100000,100500,500,'2021-03-15','2021-03-18',3,1.20,20,'COMPLETED'),
(1,1,2,100000,100500,500,'2021-03-15','2021-03-18',3,1.20,20,'COMPLETED')

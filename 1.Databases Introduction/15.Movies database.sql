CREATE DATABASE MOVIES

USE MOVIES

CREATE TABLE Directors(
    ID INT PRIMARY KEY IDENTITY NOT NULL,
    DirectorName NVARCHAR(100),
    Notes NVARCHAR(max)
)

CREATE TABLE Genres(
    ID INT PRIMARY KEY IDENTITY NOT NULL,
    GenreName NVARCHAR(50),
    Notes NVARCHAR(MAX)
)

CREATE TABLE Categories(
    ID INT PRIMARY KEY IDENTITY NOT NULL,
    CategoryName NVARCHAR(50),
    Notes NVARCHAR(MAX)
)

CREATE TABLE Movies(
    ID INT PRIMARY KEY IDENTITY NOT NULL,
    Title NVARCHAR(200),
    DirectorID INT,
    CopyrightYear DATE,
    Length TIME,
    GenreID INT,
    CategoryID INT,
    Rating INT,
    Notes NVARCHAR(MAX),

    Constraint FK_DirectorID FOREIGN KEY(DirectorID)
    REFERENCES Directors(ID),

    Constraint FK_GenreID FOREIGN KEY(GenreID)
    REFERENCES Genres(ID),

    Constraint FK_CategoryID FOREIGN KEY(CategoryID)
    REFERENCES Categories(ID)
)

INSERT INTO Categories(CategoryName)
Values
('PEGI18'),
('PEGI18'),
('PEGI18'),
('PEGI18'),
('PEGI18')

INSERT INTO Genres(GenreName)
Values
('Horror'),
('Horror'),
('Horror'),
('Horror'),
('Horror')

INSERT INTO Directors(DirectorName)
Values
('Spielberg'),
('Spielberg'),
('Spielberg'),
('Spielberg'),
('Spielberg')

INSERT INTO Movies(Title)
Values
('FastAndFurious'),
('FastAndFurious'),
('FastAndFurious'),
('FastAndFurious'),
('FastAndFurious')
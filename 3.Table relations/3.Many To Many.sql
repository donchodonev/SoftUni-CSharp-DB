-- CREATE DATABASE ManyToMany

-- USE ManyToMany

CREATE TABLE Students(
    StudentID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(60) NOT NULL
)

CREATE TABLE Exams(
    ExamID INT PRIMARY KEY IDENTITY(101,1),
    Name VARCHAR(30) NOT NULL
)

CREATE TABLE StudentsExams(
    StudentID INT NOT NULL,
    ExamID INT NOT NULL,
    PRIMARY KEY([StudentID],[ExamID])
)

INSERT INTO [Students](Name)
VALUES
('Mila'),
('Toni'),
('Ron')

INSERT INTO [Exams]([Name])
VALUES
('SpringMVC'),
('Neo4j'),
('Oracle 11g')

INSERT INTO [StudentsExams]
VALUES
(1,101),
(1,102),
(2,101),
(3,103),
(2,102),
(2,103)

ALTER TABLE [StudentsExams]
ADD CONSTRAINT FK_STUDENTS_ID
FOREIGN KEY (StudentId) REFERENCES Students(StudentID)

ALTER TABLE [StudentsExams]
ADD CONSTRAINT FK_EXAMS_ID
FOREIGN KEY (ExamID) REFERENCES Exams(ExamID)

Create TABLE People
(
    ID Int Identity,
    Name Varchar(200) Not Null,
    Picture VarBinary(MAX),
    Height Decimal(3,2),
    Weight Decimal(5,2),
    Gender BIT,
    Birthdate Datetime2,
    Biography Nvarchar(MAX)
)

Alter table People
Add Primary Key (ID)

Insert into People(Name,Height,Weight,Gender,Birthdate)
VALUES
('Doncho',1.90,99.9,0,'1992-12-28'),
('Doncho',1.90,99.9,0,'1992-12-28'),
('Doncho',1.90,99.9,0,'1992-12-28'),
('Doncho',1.90,99.9,0,'1992-12-28'),
('Doncho',1.90,99.9,0,'1992-12-28')


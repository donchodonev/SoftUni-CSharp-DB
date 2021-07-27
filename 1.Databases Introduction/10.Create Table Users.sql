Create TABLE Users
(
    ID BigInt Identity Primary key,
    Username Varchar(30) Not Null,
    Password Varchar(26) Not Null,
    ProfilePicture VarBinary(MAX),
    LastLoginTime DATETIME2,
    IsDeleted BIT
)

Insert INTO Users (Username,Password,IsDeleted)
VALUES
    ('Doncho','sadfa123',0),
    ('Pesho', 'asd123213',0),
    ('Pesho', 'asd123213',0),
    ('Pesho', 'asd123213',0),
    ('Pesho', 'asd123213',0)
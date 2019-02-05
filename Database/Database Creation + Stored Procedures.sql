
DROP TABLE IF EXISTS Serverities

CREATE TABLE Serverities(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(50)
);

INSERT INTO Serverities(Name)
Values('Low'),('Medium'),('High'),('Severe');

DROP TABLE IF EXISTS Technicians
CREATE TABLE Technicians(
Id INT PRIMARY KEY IDENTITY(1,1),
FirstName NVARCHAR(50),
LastName NVARCHAR(50));


INSERT INTO Technicians(FirstName, LastName)
Values('Ronald','McCronald'),
('Breenis','VonCheenis'),
('B''jord', 'Just B''jord');

DROP TABLE IF EXISTS TicketStates
CREATE TABLE TicketStates(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(50)
);
 
INSERT INTO TicketStates(Name)
VALUES('Not currently working on it'),
('Thinking about it'),
('Actively fixing it')
GO

DROP PROCEDURE IF EXISTS RetrieveServerities
DROP PROCEDURE IF EXISTS RetrieveTechnicians
DROP PROCEDURE IF EXISTS RetrieveTicketStates
GO

CREATE PROCEDURE RetrieveServerities
AS
SELECT * FROM Serverities
GO

CREATE PROCEDURE RetrieveTechnicians
AS
SELECT * FROM Technicians
GO

CREATE PROCEDURE RetrieveTicketStates
AS
SELECT * FROM TicketStates
GO

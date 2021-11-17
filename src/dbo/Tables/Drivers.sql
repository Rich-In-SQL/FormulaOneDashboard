/*
****************************
CREATE MAIN TABLES
****************************
*/

CREATE TABLE dbo.Drivers
(
	ID INT IDENTITY(1,1) NOT NULL,
	DriverID INT NOT NULL,
	DriverName nvarchar(50),	
	CountryID INT,
	RaceEntries	INT,
	RaceStarts INT,
	PolePositions INT,
	RaceWins INT,
	Podiums INT,
	FastestLaps INT,	
	Points DECIMAL(5,2)
);
GO
/*
****************************
CREATE THE RELATIONSHIPS 
****************************
*/

ALTER TABLE dbo.Drivers ADD CONSTRAINT FK_Drivers_CountryID FOREIGN KEY (CountryID) REFERENCES Ref.Country(CountryID);
GO
ALTER TABLE dbo.Drivers ADD CONSTRAINT PK_Drivers_DriverID PRIMARY KEY (DriverID);
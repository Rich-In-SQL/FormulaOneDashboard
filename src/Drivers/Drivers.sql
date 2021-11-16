CREATE TABLE dbo.Drivers
(
	ID INT IDENTITY(1,1) NOT NULL,
	DriverID INT NOT NULL PRIMARY KEY,
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
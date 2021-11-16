USE [FormulaOne];

GO

CREATE SCHEMA Ref;

GO

/*
****************************
CREATE THE REF TABLES
****************************
*/

CREATE TABLE Ref.Seasons
(
	ID INT IDENTITY(1,1) NOT NULL,
	SeasonRefID  INT NOT NULL PRIMARY KEY,
	Season INT
);

CREATE TABLE Ref.Country
(
	ID INT IDENTITY(1,1) NOT NULL,
	CountryID INT,
	Country	varchar(50)
)

CREATE TABLE Ref.CircuitType
(
	TypeRefID INT NOT NULL PRIMARY KEY,
	CircuitType varchar(30) NOT NULL	
)

CREATE TABLE Ref.CircuitDirections
(
	DirectionRefID INT NOT NULL PRIMARY KEY,
	Direction varchar(30)	
)

/*
****************************
CREATE MAIN TABLES
****************************
*/

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

CREATE TABLE dbo.DriversSeasons
(
	ID INT IDENTITY(1,1) NOT NULL,
	DriverID  INT NOT NULL PRIMARY KEY,	
	SeasonRefID INT
);

CREATE TABLE dbo.DriversChampionships
(
	ID INT IDENTITY(1,1) NOT NULL,
	DriverID  INT NOT NULL PRIMARY KEY,	
	SeasonRefID INT
)

CREATE TABLE dbo.Constructors
(
	ID INT IDENTITY(1,1) NOT NULL,
	ConstructorID INT PRIMARY KEY,
	Constructor varchar(100),		
	LicensedCountryID INT,	
	RacesEntered INT,	
	RacesStarted INT, 	
	Drivers INT,	
	TotalEntries INT,	
	Wins INT,	
	Points INT,	
	Poles INT,	
	FL INT,	
	Podiums INT,	
	WCC INT,
	WDC INT,
);

CREATE TABLE dbo.ConstructorsSeasons
(
	ID INT IDENTITY(1,1) NOT NULL,
	ConstructorID INT PRIMARY KEY,
	SeasonID INT
);

CREATE TABLE dbo.ConstructorNationality
(
	ID INT IDENTITY(1,1) NOT NULL,
	ContructorID INT PRIMARY KEY	
	CountryID INT
)

CREATE TABLE dbo.Circuits
(
	CircuitID INT NOT NULL PRIMARY KEY,
	Circuit varchar(200) NOT NULL,	
	GrandsPrix varchar(200) NOT NULL,		
	TypeRefID INT,	
	DirectionRefID INT,	
	LastLengthUsed DECIMAL(5,3),	
	GrandsPrixHeld INT
)

CREATE TABLE dbo.CircuitImages
(
	ImageID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CircuitID INT,
	ImageURL nvarchar(1000)
)

CREATE TABLE dbo.CircuitsLocation
(
	LocationID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CircuitID INT,
	CircuitLocation varchar(50),
	CountryID INT,
	Locale varchar(50),
	Longitude GEOGRAPHY,
	Latitude GEOGRAPHY
)

CREATE TABLE dbo.CircuitSeasons
(
	ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CircuitID INT,	
	SeasonID INT
)

/*
****************************
CREATE THE RELATIONSHIPS 
****************************
*/

ALTER TABLE dbo.Drivers ADD CONSTRAINT FK_Drivers_CountryID FOREIGN KEY (CountryID) REFERENCES Ref.Country(CountryID);

ALTER TABLE dbo.DriversSeasons ADD CONSTRAINT FK_DriversSeasons_DriverID  FOREIGN KEY (DriverID) REFERENCES dbo.Drivers(DriverID);
ALTER TABLE dbo.DriversSeasons ADD CONSTRAINT FK_DriversSeasons_SeasonRefID  FOREIGN KEY (SeasonRefID) REFERENCES Ref.Seasons(SeasonRefID);

ALTER TABLE dbo.DriversChampionships ADD CONSTRAINT FK_DriversChampionships_DriverID  FOREIGN KEY (DriverID) REFERENCES dbo.Drivers(DriverID);
ALTER TABLE dbo.DriversChampionships ADD CONSTRAINT FK_DriversChampionships_SeasonRefID  FOREIGN KEY (SeasonRefID) REFERENCES Ref.Seasons(SeasonRefID);


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
CREATE TABLE dbo.Constructors
(
	ID INT IDENTITY(1,1) NOT NULL,
	ConstructorID INT NOT NULL,
	Constructor varchar(100),		
	CountryID INT,	
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
GO
ALTER TABLE dbo.Constructors ADD CONSTRAINT FK_Constructors_CountryID  FOREIGN KEY (CountryID) REFERENCES Ref.Country(CountryID);
GO
ALTER TABLE dbo.Constructors ADD CONSTRAINT PK_Constructors_ConstructorID PRIMARY KEY (ConstructorID);
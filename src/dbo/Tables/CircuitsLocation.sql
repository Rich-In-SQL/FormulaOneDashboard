CREATE TABLE dbo.CircuitsLocation
(
	LocationID INT IDENTITY(1,1) NOT NULL,
	CircuitID INT,
	CircuitLocation varchar(50),
	CountryID INT,
	Locale varchar(50),
	Longitude GEOGRAPHY,
	Latitude GEOGRAPHY
);
GO
ALTER TABLE dbo.CircuitsLocation ADD CONSTRAINT FK_CircuitsLocation_CountryID  FOREIGN KEY (CountryID) REFERENCES Ref.Country(CountryID);
GO
ALTER TABLE dbo.CircuitsLocation ADD CONSTRAINT FK_CircuitsLocation_CircuitID  FOREIGN KEY (CircuitID) REFERENCES dbo.Circuits(CircuitID);
GO
ALTER TABLE dbo.CircuitsLocation ADD CONSTRAINT PK_CircuitsLocation_LocationID PRIMARY KEY (LocationID);
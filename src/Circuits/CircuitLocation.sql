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
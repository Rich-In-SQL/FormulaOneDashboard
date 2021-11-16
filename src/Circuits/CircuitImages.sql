CREATE TABLE dbo.CircuitImages
(
	ImageID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CircuitID INT,
	ImageURL nvarchar(1000)
)
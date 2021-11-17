CREATE TABLE dbo.CircuitImages
(
	ImageID INT IDENTITY(1,1) NOT NULL,
	CircuitID INT,
	ImageURL nvarchar(1000)
);
GO
ALTER TABLE dbo.CircuitImages ADD CONSTRAINT FK_CircuitImages_CircuitID  FOREIGN KEY (CircuitID) REFERENCES dbo.Circuits(CircuitID);
GO
ALTER TABLE dbo.CircuitImages ADD CONSTRAINT PK_CircuitImages_ImageID PRIMARY KEY (ImageID);
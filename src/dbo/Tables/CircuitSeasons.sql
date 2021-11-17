CREATE TABLE dbo.CircuitSeasons
(
	ID INT IDENTITY(1,1) NOT NULL,
	CircuitID INT,	
	SeasonID INT
);
GO
ALTER TABLE dbo.CircuitSeasons ADD CONSTRAINT FK_CircuitSeasons_CircuitID  FOREIGN KEY (CircuitID) REFERENCES dbo.Circuits(CircuitID);
GO
ALTER TABLE dbo.CircuitSeasons ADD CONSTRAINT FK_CircuitSeasons_SeasonRefID  FOREIGN KEY (SeasonID) REFERENCES Ref.Seasons(SeasonRefID);
GO
ALTER TABLE dbo.CircuitSeasons ADD CONSTRAINT PK_CircuitSeasons_ID PRIMARY KEY (ID);
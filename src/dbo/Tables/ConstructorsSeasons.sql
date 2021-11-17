CREATE TABLE dbo.ConstructorsSeasons
(
	ID INT IDENTITY(1,1) NOT NULL,
	ConstructorID INT,
	SeasonID INT
);
GO
ALTER TABLE dbo.ConstructorsSeasons ADD CONSTRAINT FK_ConstructorsSeasons_ConstructorID  FOREIGN KEY (ConstructorID) REFERENCES dbo.Constructors(ConstructorID);
GO
ALTER TABLE dbo.ConstructorsSeasons ADD CONSTRAINT FK_ConstructorsSeasons_SeasonRefID  FOREIGN KEY (SeasonID) REFERENCES Ref.Seasons(SeasonRefID);
GO
ALTER TABLE dbo.ConstructorsSeasons ADD CONSTRAINT PK_ConstructorsSeasons_ID PRIMARY KEY (ID);
CREATE TABLE dbo.DriversSeasons
(
	ID INT IDENTITY(1,1) NOT NULL,
	DriverID INT NOT NULL,	
	SeasonRefID INT
);
GO
ALTER TABLE dbo.DriversSeasons ADD CONSTRAINT FK_DriversSeasons_DriverID  FOREIGN KEY (DriverID) REFERENCES dbo.Drivers(DriverID);
GO
ALTER TABLE dbo.DriversSeasons ADD CONSTRAINT FK_DriversSeasons_SeasonRefID  FOREIGN KEY (SeasonRefID) REFERENCES Ref.Seasons(SeasonRefID);
GO
ALTER TABLE dbo.DriversSeasons ADD CONSTRAINT PK_DriversSeasons_DriverID PRIMARY KEY (DriverID);
CREATE TABLE dbo.DriversChampionships
(
	ID INT IDENTITY(1,1) NOT NULL,
	DriverID  INT NOT NULL,	
	SeasonRefID INT
)
GO
ALTER TABLE dbo.DriversChampionships ADD CONSTRAINT FK_DriversChampionships_DriverID  FOREIGN KEY (DriverID) REFERENCES dbo.Drivers(DriverID);
GO
ALTER TABLE dbo.DriversChampionships ADD CONSTRAINT FK_DriversChampionships_SeasonRefID  FOREIGN KEY (SeasonRefID) REFERENCES Ref.Seasons(SeasonRefID);
GO
ALTER TABLE dbo.DriversChampionships ADD CONSTRAINT PK_DriversChampionships_ID PRIMARY KEY (ID);
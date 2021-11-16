ALTER TABLE dbo.Drivers ADD CONSTRAINT FK_Drivers_CountryID FOREIGN KEY (CountryID) REFERENCES Ref.Country(CountryID);

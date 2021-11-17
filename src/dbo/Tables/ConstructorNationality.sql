CREATE TABLE dbo.ConstructorNationality
(
	ID INT IDENTITY(1,1) NOT NULL,
	ContructorID INT,	
	CountryID INT
);
GO
ALTER TABLE dbo.ConstructorNationality ADD CONSTRAINT FK_ConstructorNationality_ConstructorID  FOREIGN KEY (ContructorID) REFERENCES dbo.Constructors(ConstructorID);
GO
ALTER TABLE dbo.ConstructorNationality ADD CONSTRAINT FK_ConstructorNationality_CountryID  FOREIGN KEY (CountryID) REFERENCES Ref.Country(CountryID);
GO
ALTER TABLE dbo.ConstructorNationality ADD CONSTRAINT PK_ConstructorNationality_ID PRIMARY KEY (ID);
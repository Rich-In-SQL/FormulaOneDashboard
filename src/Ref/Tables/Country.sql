CREATE TABLE Ref.Country
(
	ID INT IDENTITY(1,1) NOT NULL,
	CountryID INT NOT NULL,
	Country	varchar(50)
)
GO
ALTER TABLE Ref.Country ADD CONSTRAINT PK_Country_CountryID PRIMARY KEY (CountryID);
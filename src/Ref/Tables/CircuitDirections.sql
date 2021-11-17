CREATE TABLE Ref.CircuitDirections
(
	ID INT IDENTITY(1,1) NOT NULL,
	DirectionRefID INT NOT NULL,
	Direction varchar(30)	
)
GO
ALTER TABLE Ref.CircuitDirections ADD CONSTRAINT PK_CircuitDirections_DirectionRefID PRIMARY KEY (DirectionRefID);
CREATE TABLE dbo.Circuits
(
	CircuitID INT NOT NULL,
	Circuit varchar(200) NOT NULL,	
	GrandsPrix varchar(200) NOT NULL,		
	TypeRefID INT,	
	DirectionRefID INT,	
	LastLengthUsed DECIMAL(5,3),	
	GrandsPrixHeld INT
);
GO
ALTER TABLE dbo.Circuits ADD CONSTRAINT FK_Circuits_TypeRefID  FOREIGN KEY (TypeRefID) REFERENCES Ref.CircuitType(TypeRefID);
GO
ALTER TABLE dbo.Circuits ADD CONSTRAINT FK_Circuits_DirectionRefID  FOREIGN KEY (DirectionRefID) REFERENCES Ref.CircuitDirections(DirectionRefID);
GO
ALTER TABLE dbo.Circuits ADD CONSTRAINT PK_Circuits_CircuitID PRIMARY KEY (CircuitID);
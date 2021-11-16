CREATE TABLE dbo.Circuits
(
	CircuitID INT NOT NULL PRIMARY KEY,
	Circuit varchar(200) NOT NULL,	
	GrandsPrix varchar(200) NOT NULL,		
	TypeRefID INT,	
	DirectionRefID INT,	
	LastLengthUsed DECIMAL(5,3),	
	GrandsPrixHeld INT
)
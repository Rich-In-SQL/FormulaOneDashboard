/*
****************************
CREATE THE REF TABLES
****************************
*/

CREATE TABLE Ref.Seasons
(
	ID INT IDENTITY(1,1) NOT NULL,
	SeasonRefID  INT NOT NULL,
	Season INT
);
GO
ALTER TABLE Ref.Seasons ADD CONSTRAINT PK_Seasons_SeasonRefID PRIMARY KEY (SeasonRefID);

-- -----------------------------------------------------
-- Table `dbo.SQLSaturday`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.SQLSaturday', 'U') IS NOT NULL 
  DROP TABLE dbo.SQLSaturday; 

CREATE TABLE dbo.SQLSaturday (
  [pk_SQLSaturday] INT NOT NULL IDENTITY,
  [fk_Venue] INT NULL,
  [SQLSaturdayDate] DATE NOT NULL ,
  PRIMARY KEY ([pk_SQLSaturday])
 ,
  CONSTRAINT [fk_Venue_SQLSaturday]
    FOREIGN KEY ([fk_Venue])
    REFERENCES dbo.Venue ([pk_Venue])
    ON DELETE SET NULL
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Venue_idx] ON dbo.SQLSaturday ([fk_Venue] ASC);

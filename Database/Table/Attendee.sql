
-- -----------------------------------------------------
-- Table `dbo.Attendee`
-- -----------------------------------------------------

IF OBJECT_ID('dbo.Attendee', 'U') IS NOT NULL 
  DROP TABLE dbo.Attendee; 

CREATE TABLE dbo.Attendee (
  [pk_Attendee] INT NOT NULL IDENTITY,
  [fk_Person] INT NOT NULL,
  PRIMARY KEY ([pk_Attendee])
 ,
  CONSTRAINT [fk_Person_Attendee_UNIQUE] UNIQUE  ([fk_Person] ASC),
  CONSTRAINT [fk_Person_Attendee]
    FOREIGN KEY ([fk_Person])
    REFERENCES dbo.Person ([pk_Person])
    ON DELETE CASCADE
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Person_idx] ON dbo.Attendee ([fk_Person] ASC);


-- -----------------------------------------------------
-- Table `dbo.Volunteer`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.Volunteer', 'U') IS NOT NULL 
  DROP TABLE dbo.Volunteer;
   
CREATE TABLE dbo.Volunteer (
  [pk_Volunteer] INT NOT NULL IDENTITY,
  [fk_Person] INT NOT NULL,
  PRIMARY KEY ([pk_Volunteer])
 ,
  CONSTRAINT [fk_Person_Volunteer_UNIQUE] UNIQUE  ([fk_Person] ASC),
  CONSTRAINT [fk_Person_Volunteer]
    FOREIGN KEY ([fk_Person])
    REFERENCES dbo.Person ([pk_Person])
    ON DELETE CASCADE
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Person_idx] ON dbo.Volunteer ([fk_Person] ASC);

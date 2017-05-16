
-- -----------------------------------------------------
-- Table `dbo.Organizer`
-- -----------------------------------------------------

IF OBJECT_ID('dbo.Organizer', 'U') IS NOT NULL 
  DROP TABLE dbo.Organizer; 
CREATE TABLE dbo.Organizer (
  [pk_Organizer] INT NOT NULL IDENTITY,
  [fk_Person] INT NOT NULL,
  PRIMARY KEY ([pk_Organizer])
 ,
  CONSTRAINT [fk_Person_Organizer_UNIQUE] UNIQUE  ([fk_Person] ASC),
  CONSTRAINT [fk_Person_Organizer]
    FOREIGN KEY ([fk_Person])
    REFERENCES dbo.Person ([pk_Person])
    ON DELETE CASCADE
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Person_idx] ON dbo.Organizer ([fk_Person] ASC);

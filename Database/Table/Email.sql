-- -----------------------------------------------------
-- Table `dbo.Email`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.Email', 'U') IS NOT NULL 
  DROP TABLE dbo.Email; 

CREATE TABLE dbo.Email (
  [pk_Email] VARCHAR(320) NOT NULL ,
  [fk_Attendee] INT NOT NULL ,
  PRIMARY KEY ([pk_Email])
 ,
  CONSTRAINT [fk_Attendee_Email]
    FOREIGN KEY ([fk_Attendee])
    REFERENCES dbo.Attendee ([pk_Attendee])
    ON DELETE CASCADE
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Student_idx] ON dbo.Email ([fk_Attendee] ASC);

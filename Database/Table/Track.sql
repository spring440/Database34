
-- -----------------------------------------------------
-- Table `dbo.Track`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.Track', 'U') IS NOT NULL 
  DROP TABLE dbo.Track; 

CREATE TABLE dbo.Track (
  [pk_Track] INT NOT NULL IDENTITY,
  [fk_Domain] INT NULL,
  [fk_Organizer] INT NULL DEFAULT NULL,
  [fk_SQLSaturday] INT NULL DEFAULT NULL,
  PRIMARY KEY ([pk_Track])
 ,
  CONSTRAINT [fk_Domain_UNIQUE] UNIQUE  ([fk_Domain] ASC),
  CONSTRAINT [fk_Domain_Track]
    FOREIGN KEY ([fk_Domain])
    REFERENCES dbo.Domain ([pk_Domain])
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Organizer_Track]
    FOREIGN KEY ([fk_Organizer])
    REFERENCES dbo.Organizer ([pk_Organizer])
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT [fk_SQLSaturday_Track]
    FOREIGN KEY ([fk_SQLSaturday])
    REFERENCES dbo.SQLSaturday ([pk_SQLSaturday])
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
;

CREATE INDEX [fk_Domain_idx] ON dbo.Track ([fk_Domain] ASC);
CREATE INDEX [fk_Organizer_idx] ON dbo.Track ([fk_Organizer] ASC);
CREATE INDEX [fk_SQLSaturday_idx] ON dbo.Track ([fk_SQLSaturday] ASC);


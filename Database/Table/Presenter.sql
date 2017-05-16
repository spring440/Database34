-- -----------------------------------------------------
-- Table `dbo.Presenter`
-- -----------------------------------------------------

IF OBJECT_ID('dbo.Presenter', 'U') IS NOT NULL 
  DROP TABLE dbo.Presenter; 

CREATE TABLE dbo.Presenter (
  [pk_Presenter] INT NOT NULL IDENTITY ,
  [fk_Person] INT NOT NULL,
  [fk_OrganizerNotifying] INT NULL DEFAULT NULL,
  PRIMARY KEY ([pk_Presenter])
 ,
  CONSTRAINT [fk_Person_Presenter_UNIQUE] UNIQUE  ([fk_Person] ASC),
  CONSTRAINT [fk_Person_Presenter]
    FOREIGN KEY ([fk_Person])
    REFERENCES dbo.Person ([pk_Person])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Organizer_Presenter]
    FOREIGN KEY ([fk_OrganizerNotifying])
    REFERENCES dbo.Organizer ([pk_Organizer])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX [fk_Person_idx] ON dbo.Presenter ([fk_Person] ASC);
CREATE INDEX [fk_Organizer_idx] ON dbo.Presenter ([fk_OrganizerNotifying] ASC);

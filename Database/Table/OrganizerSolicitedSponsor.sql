-- -----------------------------------------------------
-- Table `dbo.OrganizerSolicitedSponsor`
-- -----------------------------------------------------

IF OBJECT_ID('dbo.OrganizerSolicitedSponsor', 'U') IS NOT NULL 
  DROP TABLE dbo.OrganizerSolicitedSponsor; 

CREATE TABLE dbo.OrganizerSolicitedSponsor (
  [pk_fk_Organizer] INT NOT NULL ,
  [pk_fk_Sponsor] INT NOT NULL ,
  PRIMARY KEY ([pk_fk_Organizer], [pk_fk_Sponsor])
 ,
  CONSTRAINT [fk_Sponsor_OrganizerSolicitedSponsor]
    FOREIGN KEY ([pk_fk_Sponsor])
    REFERENCES dbo.Sponsor ([pk_Sponsor])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Organizer_OrganizerSolicitedSponsor]
    FOREIGN KEY ([pk_fk_Organizer])
    REFERENCES dbo.Organizer ([pk_Organizer])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX [fk_Sponsor_idx] ON dbo.OrganizerSolicitedSponsor ([pk_fk_Sponsor] ASC);


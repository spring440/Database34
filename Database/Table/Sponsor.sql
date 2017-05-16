
-- -----------------------------------------------------
-- Table `dbo.Sponsor`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.Sponsor', 'U') IS NOT NULL 
  DROP TABLE dbo.Sponsor; 

CREATE TABLE dbo.Sponsor (
  [pk_Sponsor] INT NOT NULL IDENTITY,
  [fk_Person] INT NOT NULL,
  [fk_SponsorTier] INT NOT NULL DEFAULT 1 ,
  PRIMARY KEY ([pk_Sponsor])
 ,
  CONSTRAINT [fk_Person_Sponsor]
    FOREIGN KEY ([fk_Person])
    REFERENCES dbo.Person ([pk_Person])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_SponsorTier_Sponsor]
    FOREIGN KEY ([fk_SponsorTier])
    REFERENCES dbo.SponsorTier ([pk_SponsorTier])
    ON DELETE SET DEFAULT
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Person_idx] ON dbo.Sponsor ([fk_Person] ASC);
CREATE INDEX [fk_SponsorTier_idx] ON dbo.Sponsor ([fk_SponsorTier] ASC);

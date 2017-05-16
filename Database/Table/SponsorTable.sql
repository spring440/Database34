-- -----------------------------------------------------
-- Table `dbo.SponsorTable`
-- -----------------------------------------------------

IF OBJECT_ID('dbo.SponsorTable', 'U') IS NOT NULL 
  DROP TABLE dbo.SponsorTable; 

CREATE TABLE dbo.SponsorTable (
  [pk_SponsorTable] INT NOT NULL IDENTITY,
  [fk_Sponsor] INT NOT NULL,
  PRIMARY KEY ([pk_SponsorTable])
 ,
  CONSTRAINT [idVendor_UNIQUE] UNIQUE  ([fk_Sponsor] ASC),
  CONSTRAINT [fk_Sponsor_SponsorTable]
    FOREIGN KEY ([fk_Sponsor])
    REFERENCES dbo.Sponsor ([pk_Sponsor])
    ON DELETE CASCADE
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Vendor_idx] ON dbo.SponsorTable ([fk_Sponsor] ASC);

-- -----------------------------------------------------
-- Table `dbo.RaffleEntry`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.RaffleEntry', 'U') IS NOT NULL 
  DROP TABLE dbo.RaffleEntry; 

CREATE TABLE dbo.RaffleEntry (
  [pk_fk_Email] VARCHAR(320) NOT NULL ,
  [pk_fk_Sponsor] INT NOT NULL,
  PRIMARY KEY ([pk_fk_Email], [pk_fk_Sponsor])
 ,
  CONSTRAINT [EmailString_UNIQUE] UNIQUE  ([pk_fk_Email] ASC),
  CONSTRAINT [fk_Sponsor_RaffleEntry]
    FOREIGN KEY ([pk_fk_Sponsor])
    REFERENCES dbo.Sponsor ([pk_Sponsor])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Email_RaffleEntry]
    FOREIGN KEY ([pk_fk_Email])
    REFERENCES dbo.Email ([pk_Email])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX [fk_Vendor_idx] ON dbo.RaffleEntry ([pk_fk_Sponsor] ASC);
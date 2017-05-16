
-- -----------------------------------------------------
-- Table `dbo.Venue`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.Venue', 'U') IS NOT NULL 
  DROP TABLE dbo.Venue; 
CREATE TABLE dbo.Venue (
  [pk_Venue] INT NOT NULL IDENTITY,
  [fk_Address] INT NOT NULL,
  [fk_RegionServed] INT NULL ,
  PRIMARY KEY ([pk_Venue])
 ,
  CONSTRAINT [fk_Address_UNIQUE] UNIQUE  ([fk_Address] ASC),
  CONSTRAINT [fk_Address_Venue]
    FOREIGN KEY ([fk_Address])
    REFERENCES dbo.Address ([pk_Address])
    ON DELETE NO ACTION
    ON UPDATE CASCADE,

  CONSTRAINT [fk_RegionServed_Venue]
    FOREIGN KEY ([fk_RegionServed])
    REFERENCES dbo.RegionServed ([pk_RegionServed])
    ON DELETE SET NULL
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Address_idx] ON dbo.Venue ([fk_Address] ASC);
CREATE INDEX [fk_RegionServed_Venue_idx] ON dbo.Venue ([fk_RegionServed] ASC);

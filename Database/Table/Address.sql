
-- -----------------------------------------------------
-- Table `dbo.Address`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.Address', 'U') IS NOT NULL 
  DROP TABLE dbo.Address; 

CREATE TABLE dbo.Address (
  [pk_Address] INT NOT NULL IDENTITY,
  [AddressStreet] VARCHAR(32) NULL ,
  [AddressUnit] VARCHAR(16) NULL DEFAULT NULL ,
  [fk_City] INT NULL,
  [AddressPostalCode] VARCHAR(12) NULL ,
  [fk_GeographicalRegion] INT NULL,
  PRIMARY KEY ([pk_Address])
 ,
  CONSTRAINT [fk_City_Address]
    FOREIGN KEY ([fk_City])
    REFERENCES dbo.City ([pk_City])
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT [fk_GeographicalRegion_Address]
    FOREIGN KEY ([fk_GeographicalRegion])
    REFERENCES dbo.GeographicalRegion ([pk_GeographicalRegion])
    ON DELETE SET NULL
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_City_idx] ON dbo.Address ([fk_City] ASC);
CREATE INDEX [fk_GeographicalRegion_idx] ON dbo.Address ([fk_GeographicalRegion] ASC);

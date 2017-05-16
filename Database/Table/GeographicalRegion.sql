
-- -----------------------------------------------------
-- Table `dbo.GeographicalRegion`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.GeographicalRegion', 'U') IS NOT NULL 
  DROP TABLE dbo.GeographicalRegion; 

CREATE TABLE dbo.GeographicalRegion (
  [pk_GeographicalRegion] INT NOT NULL IDENTITY,
  [GeographicalRegionDescription] VARCHAR(16) NOT NULL,
  PRIMARY KEY ([pk_GeographicalRegion]),
  CONSTRAINT [GeographicalRegionDescription_UNIQUE] UNIQUE  ([GeographicalRegionDescription] ASC))
;
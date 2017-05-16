
-- -----------------------------------------------------
-- Table `dbo.RegionServed`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.RegionServed', 'U') IS NOT NULL 
  DROP TABLE dbo.RegionServed; 

CREATE TABLE dbo.RegionServed (
  [pk_RegionServed] INT NOT NULL IDENTITY,
  [RegionServedDescription] VARCHAR(32) NOT NULL,
  PRIMARY KEY ([pk_RegionServed]),
  CONSTRAINT [RegionServedDescription_UNIQUE] UNIQUE  ([RegionServedDescription] ASC))
;
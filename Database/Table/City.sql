
-- -----------------------------------------------------
-- Table `dbo.City`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.City', 'U') IS NOT NULL 
  DROP TABLE dbo.City; 

CREATE TABLE dbo.City (
  [pk_City] INT NOT NULL IDENTITY,
  [CityDescription] VARCHAR(32) NOT NULL,
  PRIMARY KEY ([pk_City]),
  CONSTRAINT [CityDescription_UNIQUE] UNIQUE  ([CityDescription] ASC))
;

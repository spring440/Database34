
-- -----------------------------------------------------
-- Table `dbo.Domain`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.Domain', 'U') IS NOT NULL 
  DROP TABLE dbo.Domain; 
CREATE TABLE dbo.Domain (
  [pk_Domain] INT NOT NULL IDENTITY,
  [descriptionDomain] VARCHAR(45) NOT NULL,
  PRIMARY KEY ([pk_Domain]),
  CONSTRAINT [descriptionDomain_UNIQUE] UNIQUE  ([descriptionDomain] ASC))
;

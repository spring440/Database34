
-- -----------------------------------------------------
-- Table `dbo.SponsorTier`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.SponsorTier', 'U') IS NOT NULL 
  DROP TABLE dbo.SponsorTier; 
CREATE TABLE dbo.SponsorTier (
  [pk_SponsorTier] INT NOT NULL IDENTITY,
  [SponsorTierDescription] VARCHAR(16) NOT NULL ,
  PRIMARY KEY ([pk_SponsorTier]),
  CONSTRAINT [SponsorTierDescription_UNIQUE] UNIQUE  ([SponsorTierDescription] ASC))
;
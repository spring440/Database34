
-- -----------------------------------------------------
-- Table `dbo.DifficultyLevel`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.DifficultyLevel', 'U') IS NOT NULL 
  DROP TABLE dbo.DifficultyLevel; 

CREATE TABLE dbo.DifficultyLevel (
  [pk_DifficultyLevel] INT NOT NULL IDENTITY,
  [DifficultyLevelDescription] VARCHAR(45) NOT NULL,
  PRIMARY KEY ([pk_DifficultyLevel]),
  CONSTRAINT [descriptionDifficultyLevel_UNIQUE] UNIQUE  ([DifficultyLevelDescription] ASC))
;
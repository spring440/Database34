-- -----------------------------------------------------
-- Table `dbo.Time`
-- -----------------------------------------------------

IF OBJECT_ID('dbo.Time', 'U') IS NOT NULL 
  DROP TABLE dbo.Time; 

CREATE TABLE dbo.Time (
  [pk_Time] INT NOT NULL IDENTITY,
  [TimeString] VARCHAR(12) NOT NULL ,
  PRIMARY KEY ([pk_Time]),
  CONSTRAINT [TimeString_UNIQUE] UNIQUE  ([TimeString] ASC))
;

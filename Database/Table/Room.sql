
-- -----------------------------------------------------
-- Table `dbo.Room`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.Room', 'U') IS NOT NULL 
  DROP TABLE dbo.Room; 

CREATE TABLE dbo.Room (
  [pk_Room] INT NOT NULL IDENTITY,
  [RoomCapaCity] INT CHECK ([RoomCapaCity] > 0) NOT NULL DEFAULT 0,
  PRIMARY KEY ([pk_Room]))
;
-- -----------------------------------------------------
-- Table `dbo.SQLSaturdayHasClass`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.SQLSaturdayHasClass', 'U') IS NOT NULL 
  DROP TABLE dbo.SQLSaturdayHasClass; 

CREATE TABLE dbo.SQLSaturdayHasClass (
  [pk_fk_SQLSaturday] INT NOT NULL,
  [pk_fk_Class] INT NOT NULL,
  PRIMARY KEY ([pk_fk_SQLSaturday], [pk_fk_Class])
 ,
  CONSTRAINT [fk_Class_SQLSaturdayHasClass]
    FOREIGN KEY ([pk_fk_Class])
    REFERENCES dbo.Class ([pk_Class])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_SQLSaturday_SQLSaturdayHasClass]
    FOREIGN KEY ([pk_fk_SQLSaturday])
    REFERENCES dbo.SQLSaturday ([pk_SQLSaturday])
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
 
 CREATE INDEX [fk_Class_SQLSaturdayHasClass_idx] ON dbo.SQLSaturdayHasClass ([pk_fk_Class] ASC);


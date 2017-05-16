
-- -----------------------------------------------------
-- Table `dbo.Person`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.Person', 'U') IS NOT NULL 
  DROP TABLE dbo.Person; 
CREATE TABLE dbo.Person (
  [pk_Person] INT NOT NULL IDENTITY,
  [PersonFirstName] VARCHAR(45) NOT NULL,
  [PersonLastName] VARCHAR(45) NOT NULL,
  [fk_Address] INT NULL,
  PRIMARY KEY ([pk_Person])
 ,
  CONSTRAINT [fk_Address_Person]
    FOREIGN KEY ([fk_Address])
    REFERENCES dbo.Address ([pk_Address])
    ON DELETE SET NULL
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Address_idx] ON dbo.Person ([fk_Address] ASC);

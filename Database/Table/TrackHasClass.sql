-- -----------------------------------------------------
-- Table `dbo.TrackHasClass`
-- -----------------------------------------------------

IF OBJECT_ID('dbo.TrackHasClass', 'U') IS NOT NULL 
  DROP TABLE dbo.TrackHasClass; 

CREATE TABLE dbo.TrackHasClass (
  [pk_fk_Track] INT NOT NULL,
  [pk_fk_Class] INT NOT NULL,
  [fk_Time] INT NULL DEFAULT NULL,
  [fk_Room] INT NULL DEFAULT NULL,
  PRIMARY KEY ([pk_fk_Track], [pk_fk_Class])
 ,
  CONSTRAINT [fk_Track_TrackHasClass]
    FOREIGN KEY ([pk_fk_Track])
    REFERENCES dbo.Track ([pk_Track])
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT [fk_Class_TrackHasClass]
    FOREIGN KEY ([pk_fk_Class])
    REFERENCES dbo.Class ([pk_Class])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Time_TrackHasClass]
    FOREIGN KEY ([fk_Time])
    REFERENCES dbo.Time ([pk_Time])
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Room_TrackHasClass]
    FOREIGN KEY ([fk_Room])
    REFERENCES dbo.Room ([pk_Room])
    ON DELETE SET NULL
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Class_idx] ON dbo.TrackHasClass ([pk_fk_Class] ASC);
CREATE INDEX [fk_Time_idx] ON dbo.TrackHasClass ([fk_Time] ASC);
CREATE INDEX [fk_Room_idx] ON dbo.TrackHasClass ([fk_Room] ASC);
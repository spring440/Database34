
-- -----------------------------------------------------
-- Table `dbo.VenueHasRooms`
-- -----------------------------------------------------

IF OBJECT_ID('dbo.VenueHasRooms', 'U') IS NOT NULL 
  DROP TABLE dbo.VenueHasRooms; 

CREATE TABLE dbo.VenueHasRooms (
  [pk_fk_Venue] INT NOT NULL,
  [pk_fk_Room] INT NOT NULL,
  PRIMARY KEY ([pk_fk_Venue], [pk_fk_Room])
 ,
  CONSTRAINT [fk_Room_VenueHasRooms]
    FOREIGN KEY ([pk_fk_Room])
    REFERENCES dbo.Room ([pk_Room])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Venue_VenueHasRooms]
    FOREIGN KEY ([pk_fk_Venue])
    REFERENCES dbo.Venue ([pk_Venue])
    ON DELETE CASCADE
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Room_idx] ON dbo.VenueHasRooms ([pk_fk_Room] ASC);

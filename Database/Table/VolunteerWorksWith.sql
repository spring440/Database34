-- -----------------------------------------------------
-- Table `dbo.VolunteerWorksWith`
-- -----------------------------------------------------


IF OBJECT_ID('dbo.VolunteerWorksWith', 'U') IS NOT NULL 
  DROP TABLE dbo.VolunteerWorksWith; 

CREATE TABLE dbo.VolunteerWorksWith (
  [pk_fk_Volunteer] INT NOT NULL,
  [pk_fk_Organizer] INT NOT NULL,
  PRIMARY KEY ([pk_fk_Volunteer], [pk_fk_Organizer])
 ,
  CONSTRAINT [fk_Volunteer_VolunteerWorksWith]
    FOREIGN KEY ([pk_fk_Volunteer])
    REFERENCES dbo.Volunteer ([pk_Volunteer])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Organizer_VolunteerWorksWith]
    FOREIGN KEY ([pk_fk_Organizer])
    REFERENCES dbo.Organizer ([pk_Organizer])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX [fk_Organizer_idx] ON dbo.VolunteerWorksWith ([pk_fk_Organizer] ASC);

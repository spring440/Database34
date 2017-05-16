
-- -----------------------------------------------------
-- Table `dbo.PotentialLecture`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.PotentialLecture', 'U') IS NOT NULL 
  DROP TABLE dbo.PotentialLecture; 

CREATE TABLE dbo.PotentialLecture (
  [pk_PotentialLecture] INT NOT NULL IDENTITY,
  [fk_Presenter] INT NOT NULL,
  [PotentialLectureTitle] VARCHAR(128) NULL,
  [fk_Organizer] INT NULL DEFAULT NULL ,
  [fk_DifficultyLevel] INT NULL DEFAULT NULL,
  [fk_Domain] INT NULL DEFAULT NULL,
  PRIMARY KEY ([pk_PotentialLecture])
 ,
  CONSTRAINT [fk_Presenter_PotentialLecture]
    FOREIGN KEY ([fk_Presenter])
    REFERENCES dbo.Presenter ([pk_Presenter])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Organizer_PotentialLecture]
    FOREIGN KEY ([fk_Organizer])
    REFERENCES dbo.Organizer ([pk_Organizer])
    ON DELETE SET DEFAULT
    ON UPDATE NO ACTION,
  CONSTRAINT [fk_DifficultyLevel_PotentialLecture]
    FOREIGN KEY ([fk_DifficultyLevel])
    REFERENCES dbo.DifficultyLevel ([pk_DifficultyLevel])
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Domain_PotentialLecture]
    FOREIGN KEY ([fk_Domain])
    REFERENCES dbo.Domain ([pk_Domain])
    ON DELETE SET DEFAULT
    ON UPDATE CASCADE)
;

CREATE INDEX [fk_Presenter_idx] ON dbo.PotentialLecture ([fk_Presenter] ASC);
CREATE INDEX [fk_Organizer_idx] ON dbo.PotentialLecture ([fk_Organizer] ASC);
CREATE INDEX [fk_DifficultyLevel_idx] ON dbo.PotentialLecture ([fk_DifficultyLevel] ASC);
CREATE INDEX [fk_Domain_idx] ON dbo.PotentialLecture ([fk_Domain] ASC);

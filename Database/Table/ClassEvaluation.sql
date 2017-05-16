-- -----------------------------------------------------
-- Table `dbo.ClassEvaluation`
-- -----------------------------------------------------

IF OBJECT_ID('dbo.ClassEvaluation', 'U') IS NOT NULL 
  DROP TABLE dbo.ClassEvaluation; 

CREATE TABLE dbo.ClassEvaluation (
  [idAttendee] INT NOT NULL,
  [pk_fk_Class] INT NOT NULL,
  [pk_fk_SQLSaturday] INT NOT NULL ,
  [ClassEvaluationScore] INT NOT NULL,
  PRIMARY KEY ([idAttendee], [pk_fk_Class], [pk_fk_SQLSaturday])
 ,
  CONSTRAINT [fk_Class_ClassEvaluation]
    FOREIGN KEY ([pk_fk_Class])
    REFERENCES dbo.Class ([pk_Class])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Attendee_ClassEvaluation]
    FOREIGN KEY ([idAttendee])
    REFERENCES dbo.Attendee ([pk_Attendee])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT [fk_SQLSaturday_ClassEvaluation]
    FOREIGN KEY ([pk_fk_SQLSaturday])
    REFERENCES dbo.SQLSaturday ([pk_SQLSaturday])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX [fk_Class_idx] ON dbo.ClassEvaluation ([pk_fk_Class] ASC);
CREATE INDEX [fk_SQLSaturday_idx] ON dbo.ClassEvaluation ([pk_fk_SQLSaturday] ASC);


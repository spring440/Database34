-- -----------------------------------------------------
-- Table `dbo.AttendeeAttendingClassAtTime`
-- -----------------------------------------------------

IF OBJECT_ID('dbo.AttendeeAttendingClassAtTime', 'U') IS NOT NULL 
  DROP TABLE dbo.AttendeeAttendingClassAtTime; 

CREATE TABLE dbo.AttendeeAttendingClassAtTime (
  [pk_fk_Attendee] INT NOT NULL,
  [pk_fk_SQLSaturday] INT NOT NULL,
  [pk_fk_Time] INT NOT NULL,
  [fk_Class] INT NOT NULL ,
  PRIMARY KEY ([pk_fk_Attendee], [pk_fk_SQLSaturday], [pk_fk_Time])
 ,
  CONSTRAINT [fk_Attendee_AttendeeAttendingClassAtTime]
    FOREIGN KEY ([pk_fk_Attendee])
    REFERENCES dbo.Attendee ([pk_Attendee])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_SQLSaturday_AttendeeAttendingClassAtTime]
    FOREIGN KEY ([pk_fk_SQLSaturday])
    REFERENCES dbo.SQLSaturday ([pk_SQLSaturday])
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT [fk_Time_AttendeeAttendingClassAtTime]
    FOREIGN KEY ([pk_fk_Time])
    REFERENCES dbo.Time ([pk_Time])
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT [fk_Class_AttendeeAttendingClassAtTime]
    FOREIGN KEY ([fk_Class])
    REFERENCES dbo.Class ([pk_Class])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX [fk_SQLSaturday_idx] ON dbo.AttendeeAttendingClassAtTime ([pk_fk_SQLSaturday] ASC);
CREATE INDEX [fk_Time_idx] ON dbo.AttendeeAttendingClassAtTime ([pk_fk_Time] ASC);
CREATE INDEX [fk_Class_idx] ON dbo.AttendeeAttendingClassAtTime ([fk_Class] ASC);

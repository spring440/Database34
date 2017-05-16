
GO
CREATE 
TRIGGER [dbo.Class_AFTER_UPDATE] ON [Class] 
AFTER UPDATE 
  AS
BEGIN
	UPDATE Class
	Set ClassDuration = 60;
END



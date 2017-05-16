-- -----------------------------------------------------
-- procedure backupDatabase
-- -----------------------------------------------------
USE s17guest34 
GO
CREATE PROCEDURE [dbo].[backupDatabase] 
AS
BEGIN
	BACKUP DATABASE s17guest34
	TO DISK = 'D:\SQLSaturday.BAK'
	WITH DESCRIPTION = 'Full backup for SQL Server Project'
END
GO

GO
CREATE TRIGGER [dbo.SponsorTable_AFTER_INSERT] ON [SponsorTable] AFTER INSERT  AS
BEGIN
	
	DECLARE @NumTablesInUse TINYINT;
	set @NumTablesInUse = (SELECT COUNT(pk_SponsorTable) FROM SponsorTable)
	IF @NumTablesInUse > 10 
	BEGIN
		ROLLBACK; --no more than 10 tables
	END 
END
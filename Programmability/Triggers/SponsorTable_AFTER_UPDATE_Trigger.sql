
GO
CREATE TRIGGER [dbo.SponsorTable_AFTER_UPDATE] ON [SponsorTable] AFTER UPDATE AS
BEGIN
	DELETE FROM SponsorTable WHERE fk_Sponsor IS NULL ; --delete unused tables so we stay under 10
END
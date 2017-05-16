
-- -----------------------------------------------------
-- View `dbo.Sponsors_view`
-- -----------------------------------------------------
/*
IF OBJECT_ID('dbo.Sponsors_view', 'U') IS NOT NULL 
  DROP VIEW dbo.Sponsors_view; 
USE[s17guest34];
GO 

CREATE VIEW [Sponsors_view] AS
    SELECT 
        dbo.Person.PersonFirstName AS 'Sponsor',
        CONCAT(dbo.SponsorTier.SponsorTierDescription,
                'Tier') AS 'Sponsor Tier'
    FROM
        dbo.Sponsor,
        dbo.Person,
        dbo.Sponsortier
    WHERE
        dbo.Sponsor.fk_Person = dbo.Person.pk_Person
    AND dbo.Sponsor.fk_SponsorTier = dbo.Sponsortier.pk_SponsorTier;
GO

-- -----------------------------------------------------
-- View `dbo.Attendees_view`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.Attendees_view', 'U') IS NOT NULL 
  DROP VIEW dbo.Attendees_view; 
  
USE[s17guest34];

GO

CREATE VIEW [Attendees_view] AS
    SELECT 
        CONCAT(dbo.Person.PersonFirstName,
                ' ',
                dbo.Person.PersonLastName) AS 'Name',
        dbo.Address.AddressStreet AS 'Street',
        dbo.City.CityDescription AS 'City',
        dbo.GeographicalRegion.GeographicalRegionDescription AS 'State or Province',
        dbo.Address.AddressPostalCode AS 'Zip Code',
        dbo.Email.pk_Email AS 'Email'
    FROM
        dbo.Attendee,
        dbo.Person,
        dbo.GeographicalRegion,
        dbo.Address,
        dbo.City,
        dbo.Email
    WHERE
        dbo.Attendee.fk_Person = dbo.Person.pk_Person
	AND dbo.Person.fk_Address = dbo.Address.pk_Address
	AND dbo.Address.fk_City = dbo.City.pk_City
	AND dbo.Address.fk_GeographicalRegion = dbo.GeographicalRegion.pk_GeographicalRegion
	AND dbo.Email.fk_Attendee = dbo.Attendee.pk_Attendee;

GO			
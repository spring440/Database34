
-- -----------------------------------------------------
-- View `dbo.SQLSaturdays_view`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.SQLSaturdays_view', 'U') IS NOT NULL 
  DROP VIEW dbo.SQLSaturdays_view; 
  
USE[s17guest34];
GO
CREATE VIEW [SQLSaturdays_view] AS
    SELECT 
        CONVERT(varchar,dbo.SQLSaturday.SQLSaturdayDate,
                113) AS 'Date',
        CONCAT('SQLSaturday #',
                CAST(dbo.SQLSaturday.pk_SQLSaturday AS CHAR (4)),
                ' - ',
                dbo.City.CityDescription,
                YEAR(dbo.SQLSaturday.SQLSaturdayDate)) AS SQLSaturday,
        dbo.RegionServed.RegionServedDescription AS Region
    FROM
        dbo.Venue,
        dbo.SQLSaturday,
        dbo.Address,
        dbo.City,
        dbo.RegionServed
    WHERE
        dbo.SQLSaturday.fk_Venue = dbo.Venue.pk_Venue
	AND dbo.Venue.fk_Address = dbo.Address.pk_Address
	AND dbo.Address.fk_City = dbo.City.pk_City
	AND dbo.Venue.fk_RegionServed = dbo.RegionServed.pk_RegionServed;

GO
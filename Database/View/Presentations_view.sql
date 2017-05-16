
-- -----------------------------------------------------
-- View `dbo.presentations_view`
-- -----------------------------------------------------
IF OBJECT_ID('dbo.Presentations_view', 'U') IS NOT NULL 
  DROP VIEW dbo.Presentations_view; 


USE[s17guest34];
GO

CREATE VIEW [Presentations_view] AS
    SELECT 
        dbo.PotentialLecture.PotentialLectureTitle AS 'Title',
        CONCAT(dbo.Person.PersonFirstName,
                ' ',
                dbo.Person.PersonLastName) AS 'Speaker',
        dbo.DifficultyLevel.DifficultyLevelDescription AS 'Level',
        dbo.City.CityDescription AS 'SQLSaturday'
    FROM
        dbo.Presenter,
        dbo.Person,
        dbo.SQLSaturday,
        dbo.Venue,
        dbo.PotentialLecture,
        dbo.Class,
        dbo.Address,
        dbo.City,
        dbo.DifficultyLevel,
        dbo.SQLSaturdayhasClass
    WHERE
        dbo.PotentialLecture.fk_Presenter = dbo.Presenter.pk_Presenter
	AND dbo.Presenter.fk_Person = dbo.Person.pk_Person
	AND dbo.SQLSaturdayhasClass.pk_fk_Class = dbo.Class.pk_Class
	AND dbo.SQLSaturdayhasClass.pk_fk_SQLSaturday = dbo.SQLSaturday.pk_SQLSaturday
	AND dbo.SQLSaturday.fk_Venue = dbo.Venue.pk_Venue
	AND dbo.Venue.fk_Address = dbo.Address.pk_Address
	AND dbo.Address.fk_City = dbo.City.pk_City
	AND dbo.Class.fk_PotentialLecture = dbo.PotentialLecture.pk_PotentialLecture
	AND dbo.PotentialLecture.fk_DifficultyLevel = dbo.DifficultyLevel.pk_DifficultyLevel;
GO
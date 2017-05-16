-- -----------------------------------------------------
-- procedure insertPresentation
-- -----------------------------------------------------

USE s17guest34 
GO
CREATE PROCEDURE [dbo].[insertPresentation] 
( @Speaker VARCHAR(16), @Presentation VARCHAR(32))
AS
BEGIN
SET NOCOUNT ON;
	DECLARE @track INT;
	DECLARE @class INT;
	DECLARE @domain INT;
	DECLARE @person INT;
	DECLARE @presenterID INT;

INSERT 
INTO 
	Person(PersonFirstName, PersonLastName)  
VALUES 
	(@Speaker, @Speaker); --insert speaker into person table

SET @person = (SELECT pk_Person FROM Person WHERE PersonFirstName = @Speaker)--get speaker's person key

INSERT 
INTO 
	Presenter(fk_Person)  
VALUES 
	(@person); --insert speaker's person ID into presenters

SET @presenterID = (SELECT pk_Presenter From Presenter WHERE fk_Person = @person) --get speaker's presenter key

INSERT 
INTO 
	PotentialLecture(fk_Presenter, PotentialLectureTitle)  
VALUES 
	(@presenterID, @Presentation); --insert speaker and potential lecture into class

--Removed below since test data has no information about tracks or domains

--SELECT pk_Class INTO class From Class WHERE Class.fk_PotentialLecture = Presentation; #get the new class ID with the inserted lecture
--SELECT pk_Domain INTO domain FROM PotentialLectures WHERE PotentialLectures.pk_PotentialLecture = Presentation; #get the domain of the inserted lecture
--SELECT pk_Track INTO track FROM Track WHERE Track.fk_Domain = Presentation.fk_Domain; # get the track with the same domain as the inserted lecture

--INSERT
--INTO TrackHasClass (pk_Track, pk_Class)
--Values(track, class); #insert class and track into relationship table. Note: no room or time has been assigned. 

END
GO


GO 
CREATE 
TRIGGER [dbo.AttendeeAttendingClassAtTime_AFTER_INSERT] ON [AttendeeAttendingClassAtTime] 
AFTER INSERT 
  AS



BEGIN
	DECLARE @Organizer INT;
	DECLARE @Presenter INT;
	DECLARE @Attendee INT;
	DECLARE @Track INT;
	DECLARE @Lecture INT;
	Declare @Class INT; 
	 


	SET @Class = (SELECT fk_Class FROM INSERTED)
	
	SET @Lecture = (SELECT fk_PotentialLecture FROM Class 
					WHERE Class.pk_Class = @Class); --get the lecture which the Class belongs to

	SET @Track = (SELECT pk_fk_Track FROM TrackHasClass 
				  WHERE TrackHasClass.pk_fk_Class = @Class); --get the Track which the Class belongs to

	SET @Organizer = (SELECT fk_person FROM Organizer
					  WHERE pk_Organizer = (SELECT fk_Organizer FROM Track
					  WHERE Track.pk_Track = @Track)); --get the Organizer which the Track belongs to
	
	SET @Presenter = (SELECT fk_person FROM Presenter 
					  WHERE pk_Presenter = (SELECT fk_Presenter FROM PotentialLecture 
					  WHERE PotentialLecture.pk_PotentialLecture = @Lecture)); --get the Presenter which the lecture belongs to
	
	SET @Attendee = (SELECT fk_person FROM Attendee 
					 WHERE pk_Attendee =(SELECT pk_fk_Attendee FROM INSERTED)) --get the Attendee attending the class

	IF @Presenter = @Attendee OR @Organizer = @Attendee 
	BEGIN 
		ROLLBACK;
		--Attendee can only be an Organizer or Presenter of OTHER sessions
	END 
END 
